
if (textalpha != 0) {
	draw_set_alpha(textalpha)
	draw_sprite(spr_first_time_main_menu_text_2, 0, 0, -50)
	draw_set_alpha(1);
}

if (fadealpha != 0) {
	draw_set_alpha(fadealpha)
	draw_rectangle(0,0,120,108,false);
	draw_set_alpha(1);
}