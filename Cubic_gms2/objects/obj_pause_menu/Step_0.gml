/// @description move selection
if keyboard_check_pressed(vk_anykey) {
	switch (keyboard_key) {
		case vk_escape:
		case ord("P"):
			instance_destroy();
			break;
			
		case vk_down:
		case ord("S"):
			if (++selected == array_height_2d(menu_current)) selected = 0;
			break;
			
		case vk_up:
		case ord("W"):
			if (--selected == -1) selected = array_height_2d(menu_current)-1;
			break;
			
		case vk_enter:
		case vk_space:
			script_execute(menu_current[selected, function]);
	}
}
