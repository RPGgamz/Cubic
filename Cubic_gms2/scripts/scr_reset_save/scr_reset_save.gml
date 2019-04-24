with (obj_save_data) {
	ini_open("savedata.ini");
	ini_section_delete("save1");
	ini_close();
}
game_restart();