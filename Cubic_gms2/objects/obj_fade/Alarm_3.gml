/// @description fade out alarm
if (fade_out_alpha < 1) {
    fade_out_alpha += fade_out_speed;
    alarm[3]++;
    if (fade_out_alpha >= 1) {
        fade_out_alpha = 1;    
    }
} else {
    scr_room_goto(this_exit_target_room, this_exit_target_zone, traveling_cube_lvl);
    
    fade_out_alpha = 0;
    fade_in_alpha = 1;
    alarm[2] = 1;
}

