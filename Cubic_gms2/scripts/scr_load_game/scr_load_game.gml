with (obj_save_data) {
	ini_open("savedata.ini");
	
	var str_pzones = ini_read_string("save" + string(save_current), "pzones", "");
	var str_doors = ini_read_string("save" + string(save_current), "doors", "");
	var str_stars = ini_read_string("save" + string(save_current), "stars", "");
	var str_items = ini_read_string("save" + string(save_current), "items", "");
	star_count = ini_read_real("save" + string(save_current), "star_count", 0);
	load_x = ini_read_real("save" + string(save_current), "x", sprite_get_xoffset(spr_cube));
	load_y = ini_read_real("save" + string(save_current), "y", sprite_get_yoffset(spr_cube));
	var load_room = ini_read_string("save" + string(save_current), "room", "rm_start_cinematic");
	
	ini_write_string("save" + string(save_current), "room", load_room);
	ini_close();
	
	ds_map_clear(pzones);
	ds_map_clear(doors);
	ds_map_clear(stars);
	ds_map_clear(items);
	if (str_pzones != "") ds_map_read(pzones, str_pzones);
	if (str_doors != "") ds_map_read(doors, str_doors);
	if (str_stars != "") ds_map_read(stars, str_stars);
	if (str_items != "") ds_map_read(items, str_items);
	
	room_goto(asset_get_index(load_room));
	first_room = true;
}