

if (sprite_index == spr_start_cutscene_1) {
	sprite_index = spr_first_time_main_menu_bg;
	fade_in = true;
}
if (sprite_index == spr_start_cutscene_2) {
	event_user(0);
}
/*if (start) {
	sprite_index = spr_start_cutscene_2;
}
/*
if (sprite_index == spr_first_time_main_menu_bg && start) {
	sprite_index = spr_start_cutscene_2;
}
*/