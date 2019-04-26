

if (keyboard_check_pressed(vk_space) && start == false) {
	start = true;
	
	fade_out = true;
}
if (fade_in) {
	title_text_alpha += .005;
	if (title_text_alpha >= 1) {
		title_text_alpha = 1;
		fade_in = false;
	}
}
if (fade_out) {
	title_text_alpha -= .05;
	if (title_text_alpha = 0) {
		title_text_alpha = 0;
		fade_out = false;
	}	
}