/// @description initiate
pzones = ds_map_create();
doors = ds_map_create();
stars = ds_map_create();
first_room = false;
alarm[0] = 1;

if (!variable_global_exists("save_current")) global.save_current = 1;