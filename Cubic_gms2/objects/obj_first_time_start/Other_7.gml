/// @description Insert description here
// You can write your code in this editor

if (sprite_index == spr_start_cutscene_1) {
	sprite_index = spr_first_time_main_menu_bg;
	fade_in = true;
}
if (sprite_index == spr_start_cutscene_2) {
	room_goto_next();
}
/*if (start) {
	sprite_index = spr_start_cutscene_2;
}
/*
if (sprite_index == spr_first_time_main_menu_bg && start) {
	sprite_index = spr_start_cutscene_2;
}
*/