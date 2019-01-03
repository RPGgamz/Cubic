var move_key_pressed = false;
if (keyboard_check_pressed(vk_anykey)) {
    switch (keyboard_key) {
        case vk_left:
        case ord("A"):
           queued_dir = "left";
           move_key_pressed = true;
           break;
        case vk_right:
        case ord("D"):
           queued_dir = "right";
           move_key_pressed = true;
           break;
        case vk_up:
        case ord("W"):
           queued_dir = "up";
           move_key_pressed = true;
           break;
        case vk_down:
        case ord("S"):
           queued_dir = "down";
           move_key_pressed = true;
           break;
    }
}
return(move_key_pressed);
