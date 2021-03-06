//"R" restarting the room
if (keyboard_check_pressed(ord("R")) && !instance_exists(obj_pz)) {
	if (instance_exists(obj_rpg_roomsave)) with (obj_rpg_roomsave) scr_rpg_room_load();
    else {
		state = scr_idle;
	    room_restart();
	}
}

//"ESCAPE" and "P" open pause menu (in zones ESC leaves the zone)
if (state == scr_idle && (keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_escape)) && !instance_exists(obj_pz)) {
	instance_create(0, 0, obj_pause_menu);
}

//"ENTER" going to the next room
if (keyboard_check_pressed(vk_enter) && !instance_exists(obj_pz)) {
    if (room_exists(room_next(room))) scr_room_goto(room_next(room), 0, traveling_cube_lvl);
    else game_end();
}

//"TAB" going to the previous room
if (keyboard_check_pressed(vk_tab) && !instance_exists(obj_pz)) {
    if !(room == rm_game_intro) scr_room_goto(room_previous(room), 0, traveling_cube_lvl);
    else game_end();
}

//"F5" fullscreen
if (keyboard_check_pressed(vk_f5)) {
    if !(window_get_fullscreen()) {
        window_set_fullscreen(true);
    } else {
        window_set_fullscreen(false);
    }
}

//"0" go to the first junction in the forest
if (keyboard_check_pressed(ord("0"))) scr_room_goto(rm_green_forest_6a, 0, traveling_cube_lvl);

//"1" go to the first junction in the red mountains
if (keyboard_check_pressed(ord("1"))) scr_room_goto(rm_red_mts_1a, 0, traveling_cube_lvl);

//"5" go to the first junction in the forest
if (keyboard_check_pressed(ord("5"))) scr_room_goto(rm_greenforest_central, 0, traveling_cube_lvl);

//"DEL" slet alle cubes
if (keyboard_check_pressed(vk_delete)) instance_destroy(obj_cube);

//"U" puzzle complete animation test
if (keyboard_check_pressed(ord("U"))) {
    complete_animation = true;
    alarm[2] = 1;
}

//"M" mute all sound
if (keyboard_check_pressed(ord("M"))) {
    muted = !muted;
    if (muted) {
        audio_master_gain(!muted);
    } else {
        audio_master_gain(master_gain);
    }
}
