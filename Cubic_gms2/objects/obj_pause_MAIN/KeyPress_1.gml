
switch (keyboard_key) {
	case vk_down:
	case ord("S"):
		if (++e >= array_height_2d(entries)) e = 0;
		break;
	case vk_up:
	case ord("W"):
		if (--e < 0) e = array_height_2d(entries)-1;
		break;
	case vk_space:
	case vk_enter:
		switch (entries[e, e_label]) {
			case "CONTINUE":
				instance_destroy(obj_pause_menu);
				break;
			case "INVENTORY":
				obj_pause_menu.next_menu = obj_pause_INV;
				with (obj_pause_menu) event_user(0);
				break;
			case "SETTINGS":
				obj_pause_menu.next_menu = obj_pause_SET;
				with (obj_pause_menu) event_user(0);
				break;
			case "LOAD SAVE":
				obj_pause_menu.next_menu = obj_pause_SAVES;
				with (obj_pause_menu) event_user(0);
				/*/TEMPORARY!
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
				//*/
				break;
			case "HELP":
				obj_pause_menu.next_menu = obj_pause_HELP;
				with (obj_pause_menu) event_user(0);
				break;
			case "EXIT":
				scr_save_game();
				game_end();
				break;
		}
}