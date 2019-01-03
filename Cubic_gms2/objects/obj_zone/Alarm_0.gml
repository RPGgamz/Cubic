/// @description alpha alarm

alarm[0]++;
if (fade == false) {
    alpha += alpha_rate;
    if (alpha >= upper_limit) {
        if (sprite_index == spr_zone_start) {
            alarm[0] = -1;
        }
        else {
            alpha = upper_limit;
            fade = true;
        }
    }
} else {
    alpha -= alpha_rate;
    if (alpha <= lower_limit) {
        alpha = lower_limit;
        fade = false;
    }
}

