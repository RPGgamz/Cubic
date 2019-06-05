/// @description draw surfs to the GUI layer

//
var i = 0
repeat (array_length_1d(par_ls)) {
	if (surface_exists(par_ls_surfs[i])) {
		
		var layer_speed = 100/layer_get_depth(par_ls[i]);
		show_debug_message(string(i) + " lspd: " + string(layer_speed))
		var xl = layer_speed*(x - room_width/2) + bb;
		var yl = layer_speed*(y - room_height/2);
		draw_surface(par_ls_surfs[i], xl, yl);
	}
	i++;
}

//

if (surface_exists(surf_room)) {
    draw_surface_stretched(surf_room, w_screen+bb-x, h_screen-y, surface_get_width(surf_room)/obj_display_manager.view_zoom, surface_get_height(surf_room)/obj_display_manager.view_zoom);
}


