with (obj_save_data) {
	ini_open("savedata.ini");
	
	ini_write_string("save" + string(save_current), "pzones", ds_map_write(pzones));
	ini_write_string("save" + string(save_current), "doors", ds_map_write(doors));
	ini_write_string("save" + string(save_current), "stars", ds_map_write(stars));
	ini_write_real("save" + string(save_current), "star_count", star_count);
	ini_write_string("save" + string(save_current), "room", room_get_name(room));
	ini_write_real("save" + string(save_current), "x", obj_cube.x);
	ini_write_real("save" + string(save_current), "y", obj_cube.y);
	ini_write_string("save" + string(save_current), "date", string(current_day)+"/"+string(current_month)+"/"+string(current_year));
	ini_write_string("save" + string(save_current), "time", string(current_hour)+":"+string(current_minute)+":"+string(current_second));
	
	ini_close();
}