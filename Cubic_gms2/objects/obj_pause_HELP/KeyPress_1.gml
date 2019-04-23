
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
				
				break;
			case "LOAD SAVE": 
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