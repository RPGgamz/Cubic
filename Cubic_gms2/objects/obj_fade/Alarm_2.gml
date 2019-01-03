/// @description fade in alarm
if (fade_in_alpha > 0) {
    fade_in_alpha -= fade_in_speed;
    alarm[2]++;
    if (fade_in_alpha >= 1) {
        fade_in_alpha = 1;
    }
} else {
    instance_destroy();
}

