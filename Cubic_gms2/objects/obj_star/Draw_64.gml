/// @description draw absorb
if (sprite_index == spr_star_absorb && instance_exists(obj_camera)) {
	var spr_x = x-obj_camera.x+obj_camera.w_screen;
	var spr_y = y-obj_camera.y+obj_camera.h_screen;
	draw_sprite(sprite_index, image_index, spr_x, spr_y);
}