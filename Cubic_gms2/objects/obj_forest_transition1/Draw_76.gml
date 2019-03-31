/// @description initiate surf_start
if (room != next_room) {
	surface_set_target(surf_start);
	with (obj_forest_camera) {
		var zoom_var = other.zoomvar;
		draw_clear(c_red);
		
		if (surface_exists(surf_room)) {
			gpu_set_blendenable(false);
			gpu_set_colorwriteenable(true,true,true,false);
			draw_surface_stretched(surf_room, zoom_var*(w_screen-x), zoom_var*(h_screen-y), zoom_var*surface_get_width(surf_room), zoom_var*surface_get_height(surf_room));
			gpu_set_blendenable(true);
			gpu_set_colorwriteenable(true,true,true,true);
		}
		
		if (surface_exists(surf_treetop)) {
			var xl = zoom_var*(lerp(1.5, 0, x - room_width/2)- room_width);
			var yl = zoom_var*(lerp(1.5, 0, y - room_height/2) - room_height);
			draw_surface_stretched(surf_treetop, xl, yl, zoom_var*surface_get_width(surf_treetop), zoom_var*surface_get_height(surf_treetop));
		}
	}
	surface_reset_target();
	
	
}