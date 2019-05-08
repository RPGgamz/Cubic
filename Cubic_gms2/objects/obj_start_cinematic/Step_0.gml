


if (!start) {
	if (keyboard_check_pressed(vk_space)) {
		start = true;
		sprite_index = spr_start_cutscene_2;
		fade_out = true;
	} 
} else {
	if (keyboard_check_pressed(vk_anykey)) if (keyboard_key == vk_space || keyboard_key == vk_escape || keyboard_key == vk_enter) event_user(0);
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