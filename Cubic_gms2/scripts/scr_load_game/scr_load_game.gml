with (obj_save_data) {
	ini_open("savedata.ini");
	var str_pzones = ini_read_string("save" + string(save_current), "pzones", "");
	var str_doors = ini_read_string("save" + string(save_current), "doors", "");
	load_x = ini_read_real("save" + string(save_current), "x", 24);
	load_y = ini_read_real("save" + string(save_current), "y", 84);
	var load_room = ini_read_string("save" + string(save_current), "room", "rm_game_intro");
	ini_close();
	if (str_pzones != "") ds_map_read(pzones, str_pzones);
	if (str_doors != "") ds_map_read(doors, str_doors);
	room_goto(asset_get_index(load_room));
	first_room = true;
}