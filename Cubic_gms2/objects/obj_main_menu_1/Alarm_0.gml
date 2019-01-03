/// @description making "press any..."-text pulse

alarm[0]++;

if (last_pulse <= alpha_pulse) {
    last_pulse = alpha_pulse;
    alpha_pulse += pulse_speed;
        
    if (alpha_pulse >= alpha_max) {
        alpha_pulse = alpha_max;
        last_pulse = 2;
        
        alarm[0] = time_max;
    }
} else {
    last_pulse = alpha_pulse;
    alpha_pulse -= pulse_speed/2;

    if (alpha_pulse <= alpha_min) {
        alpha_pulse = alpha_min;
        last_pulse = -1;
        
        alarm[0] = time_min;
    }
}

