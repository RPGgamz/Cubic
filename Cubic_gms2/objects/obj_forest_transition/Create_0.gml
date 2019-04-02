/// @description variables and surfaces

//input variables
transition_dir = "left";
next_room = room_next(room);
bb = (obj_display_manager.ideal_width-120)/2;
gb_thickness = 60; //green bar, drawn in display_manager. this is how thick the green bar should be, compared to the screen, in percent.

//working variables
gb = -1;
width = display_get_gui_width()-bb*2;
height = display_get_gui_height();
step = 0;
surf_treetops = -1;


//prev room visual
sprite_prev_treetop = obj_forest_camera.treetop_sprite;
prev_treetop_color = obj_forest_camera.treetop_color;
var prevsurf = obj_forest_camera.surf_room;
surf_prev_room = surface_create(surface_get_width(prevsurf),surface_get_height(prevsurf));
surface_copy(surf_prev_room, 0, 0, prevsurf)

//coordinates
x = obj_forest_camera.x
y = obj_forest_camera.y
start_targ_x = obj_forest_camera.targ_x;
start_targ_y = obj_forest_camera.targ_y;
start_cube_x = 0; //given after create
start_cube_y = 0; //given after create



//bush enter sound
audio_sound_pitch(snd_bush_long, 1 + random_range(-.05, .05));
audio_sound_gain(snd_bush_long, 30/100, 0);
audio_sound_gain(snd_bush_long, 0, 1680);
audio_play_sound(snd_bush_long, 10, false);

