/// @description variables and surfaces
//input variables
transition_dir = "left";
next_room = room_next(room);
step = 0;
bb = (obj_display_manager.ideal_width-120)/2;
gb_thickness = 60; //green bar, drawn in display_manager. this is how thick the green bar should be, compared to the screen, in percent.

//working variables
width = display_get_gui_width()-bb*2;
height = display_get_gui_height();
gb = -1;
tran_alpha = 0;
col_1 = c_purple;
col_2 = c_purple;
obj_control.state = scr_nothing;

//surfaces
zoomvar = obj_display_manager.zoom;
surf_start = surface_create((surface_get_width(application_surface)-2*bb)*zoomvar, (surface_get_height(application_surface))*zoomvar);
surf_end = surface_create((surface_get_width(application_surface)-2*bb)*zoomvar, (surface_get_height(application_surface))*zoomvar);

//tick
tick = 0;
tick_rate = 0;
alarm[0] = 1;

//bush enter sound
audio_sound_pitch(snd_bush_long, 1 + random_range(-.05, .05));
audio_sound_gain(snd_bush_long, 30/100, 0);
audio_sound_gain(snd_bush_long, 0, 1680);
audio_play_sound(snd_bush_long, 10, false);

