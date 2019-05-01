/// @description initiate
pzones = ds_map_create();
doors = ds_map_create();
stars = ds_map_create();

ini_open("savedata.ini");
save_current = ini_read_real("global", "save_current", 1);
highest_save = ini_read_real("global", "highest_save", 1);
ini_close();

first_room = false;
alarm[0] = 1;