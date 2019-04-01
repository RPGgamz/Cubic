/// @description draw previous room and treetops

if (room = next_room) {
	with (obj_forest_camera) {
		if (surface_exists(other.surf_prev_room)) {
			gpu_set_blendenable(false);
		    gpu_set_colorwriteenable(true,true,true,false);
		    draw_surface(other.surf_prev_room, other.old_x0 + w_screen+bb-x, other.old_y0 + h_screen-y);
		    gpu_set_blendenable(true);
		    gpu_set_colorwriteenable(true,true,true,true);
		}
		var xl = lerp(0, -1.5, x - room_width/2) + bb;
		var yl = lerp(0, -1.5, y - room_height/2);
		draw_sprite(treetop_sprite, 0, xl, yl);
		if (surface_exists(other.surf_prev_room)) {
			gpu_set_blendenable(false);
		    gpu_set_colorwriteenable(true,true,true,false);
		    draw_surface(other.surf_prev_room, other.old_x0 + w_screen+bb-x, other.old_y0 + h_screen-y);
		    gpu_set_blendenable(true);
		    gpu_set_colorwriteenable(true,true,true,true);
		}
		var xl = lerp(0, -1.5, x - (other.old_x0 + room_width/2)) + bb;
		var yl = lerp(0, -1.5, y - (other.old_y0 + room_height/2));
		draw_sprite(other.sprite_prev_treetop, 0, xl, yl);
	}
}