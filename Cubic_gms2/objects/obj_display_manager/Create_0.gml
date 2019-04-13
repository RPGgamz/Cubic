/// @description calculating resolution and init. variables
ideal_height = 108;
ideal_width = 0;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);
if (ideal_width & 1) {
    ideal_width++;
}


//setting up view[0] for all rooms
for (var i = 1; i <= room_last; i++) {
    if (room_exists(i)) {
        room_set_view(i, 1, true, 0, 0, ideal_width, ideal_height, 0, 0, ideal_width, ideal_height, 0, 0, 0, 0, -1);
        room_set_view_enabled(i, true);
    }
}
//resizing app.surface and window to calculated resolution
surface_resize(application_surface, ideal_width, ideal_height);
window_set_size(ideal_width, ideal_height);

//show_debug_message(string(display_get_width()));
//show_debug_message(string(display_get_height()));
//show_debug_message(string(ideal_width));
//show_debug_message(string(ideal_height));

//"zooming"
zoom = 1;
view_zoom = 1;

//scaling the window as big as possible (minus one)
max_zoom = floor(display_get_width()/ideal_width);

zoom = max_zoom-1;
window_set_size(ideal_width*zoom, ideal_height*zoom);
display_set_gui_size(ideal_width, ideal_height);
//1 second delay before centering the window (necessary)
alarm[0] = 1;

//room_goto_next();

///enabling vsync (?)

//display_set_windows_alternate_sync(true);
display_reset(0, true);