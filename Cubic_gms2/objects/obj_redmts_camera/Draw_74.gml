/// @description draw surfs to the GUI layer


var onscreen_w = room_width/obj_display_manager.view_zoom;
var onscreen_h = room_height/obj_display_manager.view_zoom;

//
var i = array_length_1d(par_ls);
repeat (i) {
	i--;
	if (surface_exists(par_ls_surfs[i])) {
		var layer_speed = base_layer_speed*layer_get_depth(par_ls[i])/100;
		var xl = -layer_speed*(x - parallax_origo_x)/obj_display_manager.view_zoom + bb - left_bor/obj_display_manager.view_zoom;
		var yl = -layer_speed*(y - parallax_origo_y)/obj_display_manager.view_zoom - top_bor/obj_display_manager.view_zoom;
		
		if (anyclouds && cloud_layers[i]) {
			draw_surface_stretched(par_ls_surfs[i], xl + cloud_speed*cloud_time, yl, onscreen_w, onscreen_h);
			draw_surface_stretched(par_ls_surfs[i], xl + cloud_speed*cloud_time - room_width, yl, onscreen_w, onscreen_h);
		} else draw_surface_stretched(par_ls_surfs[i], xl, yl, onscreen_w, onscreen_h);
	}
}
//

if (surface_exists(surf_room)) {
	var layer_speed = base_layer_speed;
	var xl = -layer_speed*(x - parallax_origo_x)/obj_display_manager.view_zoom + bb - left_bor/obj_display_manager.view_zoom;
	var yl = -layer_speed*(y - parallax_origo_y)/obj_display_manager.view_zoom - top_bor/obj_display_manager.view_zoom;
    draw_surface_stretched(surf_room, xl, yl, onscreen_w, onscreen_h);
}

with(obj_redmts_mist) {
	var layer_speed = other.base_layer_speed*(1+z);
	var xl = -layer_speed*(other.x - other.parallax_origo_x) + other.bb - other.left_bor;
	var yl = -layer_speed*(other.y - other.parallax_origo_y) - other.top_bor;
	draw_sprite_ext(spr_redmts_mist, imagenr, xl+x, yl+y, 1+0.3*z, 1+0.3*z, 0, c_white, 1-abs(2*z-1));
}
