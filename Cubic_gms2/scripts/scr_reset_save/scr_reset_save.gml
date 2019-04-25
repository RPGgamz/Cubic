with (obj_save_data) {
	ini_open("savedata.ini");
	ini_section_delete("save" + string(argument0));
	ini_close();
}
if (save_current == argument0) game_restart();