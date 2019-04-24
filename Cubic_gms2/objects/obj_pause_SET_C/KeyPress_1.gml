
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
			case "AUDIO":
				obj_pause_menu.next_menu = obj_pause_SET_A;
				with (obj_pause_menu) event_user(0);
				break;
			case "VIDEO": 
				break;
			case "CONTROLS":
				break;
			case "PREFERENCES":
				break;
			case "BACK":
				obj_pause_menu.next_menu = obj_pause_MAIN;
				with (obj_pause_menu) event_user(0);
				break;
		}
}