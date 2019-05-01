with (obj_save_data) {
	ini_open("savedata.ini");
	ini_section_delete("save" + string(argument0));
	ini_close();
	if (save_current == argument0) scr_load_game();
	else if (argument0 == highest_save) {
		ini_open("savedata.ini");
		while (!ini_section_exists("save" + string(highest_save))){
			highest_save--;
		}
		ini_write_real("global", "highest_save", highest_save);
		ini_close();
	}
}