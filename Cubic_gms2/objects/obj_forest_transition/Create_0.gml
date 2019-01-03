/// @description variables and surfaces
//input variables
transition_dir = "left";
next_room = room_next(room);
step = 0;
bb = obj_control.bb;
gb_thickness = 60; //green bar, drawn in display_manager. this is how thick the green bar should be, compared to the screen, in percent.

//working variables
width = display_get_gui_width()-bb*2;
height = display_get_gui_height();
gb = -1;
tran_alpha = 0;


//surfaces
surf_start = surface_create(surface_get_width(application_surface)-2*bb, surface_get_height(application_surface));
surf_end = surface_create(surface_get_width(application_surface)-2*bb, surface_get_height(application_surface));


//draw surf_start
surface_set_target(surf_start);
draw_enable_alphablend(false);
draw_set_colour_write_enable(true,true,true,false);
draw_clear(c_black);
draw_surface(application_surface, -bb, 0);
draw_enable_alphablend(true);
draw_set_colour_write_enable(true,true,true,true);
surface_reset_target();




///forest transition colors

//deep forest
c_deep_forest = make_color_rgb(62, 91, 46);

//medium forest
c_medium_forest = make_color_rgb(66, 96, 48);

//light forest
c_light_forest = make_color_rgb(69, 101, 51);

//star forest
c_star_forest = make_color_rgb(13, 14, 12);

/*
//COLORS!!!!!
if (room == rm_green_forest_1c or room == rm_green_forest_2c) {
    col_1 = c_medium_forest;
} else if (room == rm_green_forest_3c or room == rm_green_forest_4c or room == rm_green_forest_4ca or room == rm_green_forest_5c or room == rm_green_forest_6c) {
    col_1 = c_deep_forest;
} else {
    col_1 = c_light_forest;
}
show_debug_message("col_1: " + string(col_1))
if (next_room == rm_green_forest_1c or next_room == rm_green_forest_2c) {
    col_2 = c_medium_forest;
} else if (next_room == rm_green_forest_3c or next_room == rm_green_forest_4c or next_room == rm_green_forest_4ca or next_room == rm_green_forest_5c or next_room == rm_green_forest_6c) {
    col_2 = c_deep_forest;
} else if (next_room != rm_green_forest_1c or next_room != rm_green_forest_2c or next_room != rm_green_forest_4c or next_room != rm_green_forest_4ca or next_room != rm_green_forest_5c or next_room != rm_green_forest_6c) {
    col_2 = c_light_forest;
}
show_debug_message("col_2: " + string(col_2))
show_debug_message("next room: " + string(next_room));
*/

tick = 0;
tick_rate = 0;
alarm[0] = 1;


/* */
///bush enter sound
audio_sound_pitch(snd_bush_long, 1 + random_range(-.05, .05));
audio_sound_gain(snd_bush_long, 30/100, 0);
audio_sound_gain(snd_bush_long, 0, 1680);
audio_play_sound(snd_bush_long, 10, false);



/* */
/*  */
