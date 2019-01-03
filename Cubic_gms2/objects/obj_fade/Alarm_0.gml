/// @description flash alarm (into fade)
/// @param into fade
if (flash) {
    if (flash_alpha < .80) {
        flash_alpha += flash_speed;
        alarm[0]++;
        if (flash_alpha >= .80) {
            flash_alpha = .80;
            flash = false;
        }
    }
} else {
    if (flash_alpha > 0) {
        flash_alpha -= flash_speed;
        alarm[0]++;
        if (flash_alpha <= 0) {
            flash_alpha = 0;
            //alarm[1] = 24;
            alarm[1] = 42;
        }
    }
}

