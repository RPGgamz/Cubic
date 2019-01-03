if (alpha_fade < 1) {
    alpha_fade += fade_out;
    alarm[5]++;
} else {
    room_goto(rm_T_1);
}

