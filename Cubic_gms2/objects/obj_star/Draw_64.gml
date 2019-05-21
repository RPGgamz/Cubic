/// @description draw absorb
if (sprite_index == spr_star_absorb && instance_exists(obj_camera)) {
	
	switch (floor(image_index)) {
		case 0: draw_set_alpha(51/255); break;
		case 1: draw_set_alpha(76/255); break;
		case 2: draw_set_alpha(100/255); break;
		case 31: draw_set_alpha(76/255); break;
		case 32: draw_set_alpha(42/255); break;
		case 33: draw_set_alpha(15/255); break;
		default:
			if (floor(image_index) > 2 && floor(image_index) < 31) draw_set_alpha(125/255)
			else draw_set_alpha(0);
	}
	draw_set_color(c_black);
	draw_rectangle(0, 0, display_get_gui_width(), display_get_height(), false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	var spr_x = x-obj_camera.x+obj_camera.w_screen;
	var spr_y = y-obj_camera.y+obj_camera.h_screen;
	draw_sprite(sprite_index, image_index, spr_x, spr_y);
}