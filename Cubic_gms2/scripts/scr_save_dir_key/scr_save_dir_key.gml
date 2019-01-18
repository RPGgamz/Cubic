
if (keyboard_check_pressed(vk_anykey)) {
    switch (keyboard_key) {
        case vk_left:
        case ord("A"):
           queued_dir = "left";
           return(true);
           break;
        case vk_right:
        case ord("D"):
           queued_dir = "right";
           return(true);
           break;
        case vk_up:
        case ord("W"):
           queued_dir = "up";
           return(true);
           break;
        case vk_down:
        case ord("S"):
           queued_dir = "down";
           return(true);
           break;
		default:
			return(false);
    }
}
