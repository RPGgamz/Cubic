/// @description draw surfs to the GUI layer

/*/
var i = array_length_1d(par_ls)
repeat (i) {
	i--;
	if (surface_exists(par_ls_surfs[i])) {
		
		var layer_speed = 100/layer_get_depth(par_ls[i]);
		var xl = -layer_speed*(x - room_width/2) + bb - room_width;
		var yl = -layer_speed*(y - room_height/2) - room_height;
		draw_surface(par_ls_surfs[i], xl, yl);
		show_debug_message(i)
	}
}

/*/

if (surface_exists(surf_room)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface_stretched(surf_room, w_screen+bb-x, h_screen-y, surface_get_width(surf_room)/obj_display_manager.view_zoom, surface_get_height(surf_room)/obj_display_manager.view_zoom);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}


