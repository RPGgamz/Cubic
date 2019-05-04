

if (sprite_index == spr_start_cutscene_1) {
	sprite_index = spr_first_time_main_menu_bg;
	fade_in = true;
}
if (sprite_index == spr_start_cutscene_2) {
	instance_activate_object(obj_control);
	obj_save_data.first_room = false;
	scr_room_goto(room_next(room), 1, 1)
}
/*if (start) {
	sprite_index = spr_start_cutscene_2;
}
/*
if (sprite_index == spr_first_time_main_menu_bg && start) {
	sprite_index = spr_start_cutscene_2;
}
*/