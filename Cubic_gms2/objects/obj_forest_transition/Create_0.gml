/// @description variables and surfaces

//settings
gb_thickness = 65; //green bar. this is how thick the green bar should be, compared to the screen, in percent.
green_fade_speed = 5; //how fast the previous room fades green

//working variables
transition_dir = "left";
next_room = room_next(room);
bb = (obj_display_manager.ideal_width-120)/2;
gb = -1;
width = display_get_gui_width()-bb*2;
height = display_get_gui_height();
step = 0;
surf_treetops = -1;
obj_control.state = scr_nothing;

//prev room visual
sprite_prev_treetop = obj_camera.treetop_sprite;
prev_treetop_color = obj_camera.treetop_color;
var prevsurf = obj_camera.surf_room;
surf_prev_room = surface_create(surface_get_width(prevsurf),surface_get_height(prevsurf));
gpu_set_blendmode_ext(bm_one,bm_zero)
surface_copy(surf_prev_room, 0, 0, prevsurf)
gpu_set_blendmode(bm_normal)

//coordinates
x = obj_camera.x
y = obj_camera.y
start_targ_x = obj_camera.targ_x;
start_targ_y = obj_camera.targ_y;
start_cube_x = 0; //given after create
start_cube_y = 0; //given after create

//bush enter sound
audio_sound_pitch(snd_bush_long, 1 + random_range(-.05, .05));
audio_sound_gain(snd_bush_long, 30/100, 0);
audio_sound_gain(snd_bush_long, 0, 1680);
audio_play_sound(snd_bush_long, 10, false);

soundfix = instance_create_depth(0,0,0, QUICKSOUNDFIX);
soundfix.alarm[0] = 41;