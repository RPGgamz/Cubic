/// @description variables and surfaces
//input variables
transition_dir = "left";
next_room = room_next(room);
bb = (obj_display_manager.ideal_width-120)/2;
gb_thickness = 60; //green bar, drawn in display_manager. this is how thick the green bar should be, compared to the screen, in percent.

//working variables
width = display_get_gui_width()-bb*2;
height = display_get_gui_height();
gb = -1;

//prev room visual
surf_prev_room = obj_forest_camera.surf_room;
sprite_prev_treetop = obj_forest_camera.treetop_sprite;

//start conditions
prev_cam_x = obj_forest_camera.x 
prev_cam_y = obj_forest_camera.y
prev_cam_targ_x = obj_forest_camera.targ_x;
prev_cam_targ_y = obj_forest_camera.targ_y;

//bush enter sound
audio_sound_pitch(snd_bush_long, 1 + random_range(-.05, .05));
audio_sound_gain(snd_bush_long, 30/100, 0);
audio_sound_gain(snd_bush_long, 0, 1680);
audio_play_sound(snd_bush_long, 10, false);

