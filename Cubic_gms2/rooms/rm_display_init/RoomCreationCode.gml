randomize();
/*
global.sound[0] = -1;
global.sound[1] = -1;
global.sound[2] = -1;
*/
instance_create(0, 0, obj_display_manager);
instance_create(0, 0, obj_depth_control)
instance_create(0, 0, obj_control);
//instance_create(0, 0, obj_music);
instance_create(0, 0, MUSIC_SYSTEM_IDEAS);
instance_create(0, 0, obj_save_data);

