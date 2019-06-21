/// @description draw surfs to the GUI layer

//
var i = array_length_1d(par_ls);
repeat (i) {
	i--;
	if (surface_exists(par_ls_surfs[i])) {
		var layer_speed = layer_get_depth(par_ls[i])/100;
		var xl = -layer_speed*(x - parallax_origo_x) + bb - left_bor;
		var yl = -layer_speed*(y - parallax_origo_y) - top_bor;
		
		if (anyclouds && cloud_layers[i]) {
			draw_surface(par_ls_surfs[i], xl + cloud_speed*cloud_time, yl);
			draw_surface(par_ls_surfs[i], xl + cloud_speed*cloud_time - room_width, yl);
		} else draw_surface(par_ls_surfs[i], xl, yl);
	}
}
//

if (surface_exists(surf_room)) {
	var layer_speed = 1;
	var xl = -layer_speed*(x - parallax_origo_x) + bb - left_bor;
	var yl = -layer_speed*(y - parallax_origo_y) - top_bor;
    draw_surface_stretched(surf_room, xl, yl, surface_get_width(surf_room)/obj_display_manager.view_zoom, surface_get_height(surf_room)/obj_display_manager.view_zoom);
}

with(obj_redmts_mist) {
	var layer_speed = 1+z;
	var xl = -layer_speed*(other.x - other.parallax_origo_x) + other.bb - other.left_bor;
	var yl = -layer_speed*(other.y - other.parallax_origo_y) - other.top_bor;
	draw_sprite_ext(spr_redmts_mist, imagenr, xl+x, yl+y, 1+0.3*z, 1+0.3*z, 0, c_white, 1-abs(2*z-1))
}
