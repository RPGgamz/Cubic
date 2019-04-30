
if (!selected) switch (keyboard_key) {
	case vk_down:
	case ord("S"):
		if (++e > e_max+1) e = 1;
		break;
	case vk_up:
	case ord("W"):
		if (--e < 1) e = e_max+1;
		break;
	case vk_space:
	case vk_enter:
			if (e == e_max+1) {
				obj_pause_menu.next_menu = obj_pause_MAIN;
				with (obj_pause_menu) event_user(0);
			}
			else if (e == e_max) {
				if (obj_save_data.highest_save < e) obj_save_data.highest_save = e;
				scr_save_game();
				obj_save_data.save_current = e;
				scr_load_game();
				instance_destroy(obj_pause_menu);
			}
	case vk_right:
	case ord("D"):
		selected = true;
		e2 = 1;
		break;
} else switch (keyboard_key) {
	case vk_down:
	case ord("S"):
		if (++e2 > e2_max+1) e2 = 1;
		break;
	case vk_up:
	case ord("W"):
		if (--e2 < 1) e2 = e2_max+1;
		break;
	case vk_left:
	case ord("A"):
		selected = false;
		break;
	case vk_space:
	case vk_enter:
		var e2max1 = e2_max+1;
		switch(e2) {
			case 1:
				scr_save_game();
				obj_save_data.save_current = e;
				scr_load_game();
				instance_destroy(obj_pause_menu);
				break;
			case 2:
				scr_reset_save(e);
				break;
			case e2max1:
				selected = false;
				break;
		}
		break;
}