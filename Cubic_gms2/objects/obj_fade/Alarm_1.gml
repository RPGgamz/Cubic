/// @description fade out alarm (into pz)
/// @param into pz
if (fade_out_alpha < 1) {
    fade_out_alpha += fade_out_speed;
    alarm[1]++;
    if (fade_out_alpha >= 1) {
        alarm[1] = 12;
    }
} else {
    scr_room_goto(this_zone_target_room, -1, this_cube_lvl);
    instance_destroy(this_cube_id);
    
    fade_out_alpha = 0;
    fade_in_alpha = 1;
    alarm[2] = 1;
}

