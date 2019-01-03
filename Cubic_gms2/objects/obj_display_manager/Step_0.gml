/// @description changing zoom/resolution
if (keyboard_check_pressed(ord("Z"))) {
    zoom++;
    
    if (zoom > max_zoom) {
        zoom = 1;
    }
    
    window_set_size(ideal_width*zoom, ideal_height*zoom);
    alarm[0] = 1;
}

if (keyboard_check_pressed(ord("X"))) {
    zoom--;
    window_set_size(ideal_width*zoom, ideal_height*zoom);
    alarm[0] = 1;
}


