
switch (keyboard_key) {
	case ord("P"):
	case vk_escape:
		obj_pause_menu.alarm[0] = 1;
		break;
	case vk_enter:
	case vk_space:
		obj_pause_menu.next_menu = obj_pause_INV;
		with (obj_pause_menu) event_user(0);
		break;
	case ord("W"):
	case ord("A"):
	case ord("S"):
	case ord("D"):
	case vk_up:
	case vk_down:
	case vk_right:
	case vk_left:
		instance_destroy(obj_pause_menu);
}
