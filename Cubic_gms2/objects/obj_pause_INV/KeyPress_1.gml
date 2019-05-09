
switch (keyboard_key) {
	case vk_down:
	case ord("S"):
		if (++s_y > inv_height-1) s_y = 0;
		break;
	case vk_up:
	case ord("W"):
		if (--s_y < 0) s_y = inv_height-1;
		break;
	case vk_right:
	case ord("D"):
		if (++s_x > inv_width-1) s_x = 0;
		break;
	case vk_left:
	case ord("A"):
		if (--s_x < 0) s_x = inv_width-1;
		break;
	case vk_enter:
	case vk_space:
		if (s_y == inv_height-1) {
			obj_pause_menu.next_menu = obj_pause_MAIN;
			with (obj_pause_menu) event_user(0);
		} else {
			var s_n = s_y*inv_width+s_x;
			var obj = scr_item_get_obj(s_n);
			if (ds_map_find_value(obj_save_data.items, obj) == -1) switch (obj) {
				case obj_item_map:
					obj_pause_menu.next_menu = obj_pause_MAP;
					with (obj_pause_menu) event_user(0);
			}
		}
		break;
}