/// @description draw previous room and treetops

if (room = next_room) {
	if !(surface_exists(surf_treetops)) surf_treetops = surface_create(1,1)
	
	var fcam = obj_forest_camera;
	if (surface_exists(surf_prev_room)) {
		gpu_set_blendenable(false);
		gpu_set_colorwriteenable(true,true,true,false);
		draw_surface(surf_prev_room, old_x0 + fcam.w_screen+bb-fcam.x, old_y0 + fcam.h_screen-fcam.y);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true);
	}
	with (obj_forest_camera) {
		var xl = lerp(0, -1.5, x - room_width/2) + bb;
		var yl = lerp(0, -1.5, y - room_height/2);
		draw_sprite(treetop_sprite, 0, xl, yl);
		var xl = lerp(0, -1.5, x - (other.old_x0 + room_width/2)) + bb;
		var yl = lerp(0, -1.5, y - (other.old_y0 + room_height/2));
		draw_sprite(other.sprite_prev_treetop, 0, xl, yl);
	}
}