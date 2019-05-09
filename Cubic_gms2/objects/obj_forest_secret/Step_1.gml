if (!instance_exists(obj_control)) exit;

var dir = "nothing important";
if (keyboard_check_pressed(vk_anykey)) switch (keyboard_key) {
	case ord("W"):
	case vk_up:
		dir = "up";
		break;
	case ord("D"):
	case vk_right:
		dir = "right";
		break;
	case ord("S"):
	case vk_down:
		dir = "down";
		break;
	case ord("A"):
	case vk_left:
		dir = "left";
		break;
}


if (dir != "nothing important") {
	if (obj_control.state == scr_idle) {
		important_dir = dir;
		event_user(0);
		
	} else if (obj_control.state == scr_move) {
		//start/reset timer
		important_dir = dir;
		timer = obj_control.move_queue_window;
	}
	
} else if (timer >= 0) {
	if (obj_control.state == scr_idle) {
		
		event_user(0);
	}
	timer--;
}