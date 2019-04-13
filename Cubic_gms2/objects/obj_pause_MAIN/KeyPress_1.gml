
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
		switch (e) {
			case 0: instance_destroy(obj_pause_menu);
		}
}