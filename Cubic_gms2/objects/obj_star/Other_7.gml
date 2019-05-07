if (sprite_index == spr_star_absorb) {
	obj_control.state = scr_idle;
	obj_save_data.star_count++;
    sprite_index = -1;
	with (obj_save_data) event_user(0);
}

