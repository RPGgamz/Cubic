
switch (keyboard_key) {
	case vk_down:
	case ord("S"):
		if (++e >= array_height_2d(entries)) e = 0;
		alarm[0] = -1;
		break;
	case vk_up:
	case ord("W"):
		if (--e < 0) e = array_height_2d(entries)-1;
		alarm[0] = -1;
		break;
	case vk_left:
	case ord("A"):
		if (e<3) {
			if (entries[e, e_value] > 0) {
				entries[e, e_value]--;
				alarm[0] = scroll_pause;
				scroll_dir = -1;
			}
		} else if (entries[e, e_label] == "PUZZLE-MUSIC") entries[e, e_value] = !entries[e, e_value];
		break;
	case vk_right:
	case ord("D"):
		if (e<3) {
			if (entries[e, e_value] < slider_max) {
				entries[e, e_value] = max(entries[e, e_value]+1, 1);
				alarm[0] = scroll_pause;
				scroll_dir = 1;
			}
		} else if (entries[e, e_label] == "PUZZLE-MUSIC") entries[e, e_value] = !entries[e, e_value];
		break;
	case vk_space:
	case vk_enter:
		switch (entries[e, e_label]) {
			case "MASTER":
			case "MUSIC": 
			case "SFX":
				if (entries[e, e_value] == 0) entries[e, e_value] = slider_max;
				else entries[e, e_value] = -entries[e, e_value];
				break;
			case "PUZZLE-MUSIC":
				entries[e, e_value] = !entries[e, e_value];
				break;
			case "BACK":
				obj_pause_menu.next_menu = obj_pause_SET;
				with (obj_pause_menu) event_user(0);
				break;
		}
}