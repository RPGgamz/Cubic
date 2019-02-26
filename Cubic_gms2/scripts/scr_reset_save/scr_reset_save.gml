with (obj_save_data) {
	ini_open("savedata.ini");
	ini_key_delete("save", "pzones");
	ini_key_delete("save", "doors");
	ini_key_delete("save", "room");
	ini_key_delete("save", "x");
	ini_key_delete("save", "y");
	ini_close();
}
game_restart();