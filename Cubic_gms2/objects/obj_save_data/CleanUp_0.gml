/// @description destroy maps
ds_map_destroy(pzones);
ds_map_destroy(doors);
ds_map_destroy(stars);

ini_open("savedata.ini");
ini_write_real("global", "save_current", save_current);
ini_close();