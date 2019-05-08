///draw moving self
if (sprite_index != -1 && y_offset != 0 && instance_exists(obj_camera)) {
	var spr_x = x-obj_camera.x+obj_camera.w_screen+(obj_display_manager.ideal_width-120)/2;
	var spr_y = y-obj_camera.y+obj_camera.h_screen+y_offset;
	draw_sprite(sprite_index, image_index, spr_x, spr_y);
}