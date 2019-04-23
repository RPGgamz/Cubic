
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
			case "HOW TO PLAY":
				break;
			case "TEXT":
				break;
			case "TUTORIAL": 
				break;
			case "ASSIST MODE": 
				break;
			case "FAQ":
				break;
			case "BACK": 
				obj_pause_menu.next_menu = obj_pause_MAIN;
				with (obj_pause_menu) event_user(0);
				break;
		}
}