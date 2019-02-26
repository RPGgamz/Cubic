with (obj_save_data) {
	ini_open("savedata.ini");
	ini_write_string("save", "pzones", ds_map_write(pzones));
	ini_write_string("save", "doors", ds_map_write(doors));
	ini_write_string("save", "room", room_get_name(room));
	ini_write_real("save", "x", obj_cube.x);
	ini_write_real("save", "y", obj_cube.y);
	ini_close();
}