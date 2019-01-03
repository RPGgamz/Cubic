if !(turning_off) {
    if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D"))) {
        alarm[3] = 360;
        turning_off = true;
    }
}

