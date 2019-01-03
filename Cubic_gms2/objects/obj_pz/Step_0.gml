/// @description initiate camera movements
//complete puzzles
if (obj_control.state == scr_move && instance_exists(pz[current_puzzle,1]) && scr_pz_complete_check(pz[current_puzzle,1])){
    //pause for sound and animation
    obj_control.state = scr_nothing;
    alarm[0] = pz_complete_pause;
    
    //play "puzzle complete" sound
    if (one_to_four == 1) {
        audio_sound_gain(snd_pc_1, volume, 0);
        audio_play_sound(snd_pc_1, 10, false);
    } else if (one_to_four == 2) {
        audio_sound_gain(snd_pc_2, volume, 0);
        audio_play_sound(snd_pc_2, 10, false);
    } else if (one_to_four == 3) {
        audio_sound_gain(snd_pc_3, volume, 0);
        audio_play_sound(snd_pc_3, 10, false);
    } else if (one_to_four == 4) {
        audio_sound_gain(snd_pc_4, volume, 0);
        audio_play_sound(snd_pc_4, 10, false);
        one_to_four = 0;
    }
    one_to_four++;
    
    //play the animation
    instance_create(0, 0, obj_pz_complete_animation);
}

//Cycle
if (keyboard_check_pressed(vk_anykey) && alarm[0] == -1)
    {
    switch (keyboard_key)
        {
        case c_next:
            if (instance_exists(pz[current_puzzle,1]) && (current_puzzle < solved_pzs || solved_pzs == -1)) scr_pz_goto(current_puzzle+1);
            break;
        case c_prev:
            if (0 < current_puzzle) scr_pz_goto(current_puzzle-1);
            break;
        }
    }






///reset and leave

//reset puzzle
if (keyboard_check_pressed(ord("R")) && alarm[0] == -1 && !instance_exists(obj_pz_camera_move)) scr_puzzle_reset(pz[current_puzzle,0])

//leave puzzle
if (keyboard_check_pressed(vk_escape) && obj_control.state == scr_idle) {
    if (!instance_exists(obj_fade)) {
		var fade = instance_create(0,0,obj_fade);
	    fade.alarm[3] = 1;
	    fade.this_exit_target_room = obj_zone_exit.target_room;
	    fade.this_exit_target_zone = obj_zone_exit.target_zone;
	    fade.traveling_cube_lvl = obj_control.traveling_cube_lvl;
	} else game_end();
}


