with (obj_save_data) {
	ini_open("savedata.ini");
	ini_write_string("save" + string(save_current), "pzones", ds_map_write(pzones));
	ini_write_string("save" + string(save_current), "doors", ds_map_write(doors));
	ini_write_string("save" + string(save_current), "room", room_get_name(room));
	ini_write_real("save" + string(save_current), "x", obj_cube.x);
	ini_write_real("save" + string(save_current), "y", obj_cube.y);
	ini_close();
}