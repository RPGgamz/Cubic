

draw_sprite(sprite_index, image_index, x, 0);
if (sprite_index == spr_first_time_main_menu_bg) {
	draw_set_alpha(title_text_alpha);
	draw_sprite(spr_first_time_main_menu_text, 0, x, 0);
	draw_set_alpha(1);
}
if (start) {
	sprite_index = spr_start_cutscene_2;
}
