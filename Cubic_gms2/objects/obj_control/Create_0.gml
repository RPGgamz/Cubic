/// @description init variables
state = scr_idle;
cubes = ds_list_create();
movespeed = 2;
target_door = -1;
traveling_cube_lvl = 1;
queued_dir = "still";
move_queue_timer = 0;
move_queue_window = 10;
target_dx = 0;
target_dy = 0;

bb = (obj_display_manager.ideal_width-120)/2*obj_display_manager.view_zoom; //black bar width

///complete animation
complete_animation = false;
animation = 0;

///audio master variables
muted = false;
master_gain = 40/100;

