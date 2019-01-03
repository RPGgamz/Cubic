if !(flash) {
    if (alpha_flash < 1) {
        alpha_flash += flash_speed;
        alarm[4]++;
        if (alpha_flash == 1) {
            flash = true;
        }
    }
} else {
    if (alpha_flash > 0) {
        alpha_flash -= flash_speed;
        if !(alpha_flash == 0) {
            alarm[4]++;
        } else {
            flash = false;
            alarm[5] = 12;
        }
    }
}

