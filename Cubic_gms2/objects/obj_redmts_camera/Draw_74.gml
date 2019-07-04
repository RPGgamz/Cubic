/// @description draw surfs to the GUI layer

//dimensions of the room on the screen
var onscreen_w = room_width/view_zoom;
var onscreen_h = room_height/view_zoom;

//parallax layer surfaces
var i = array_length_1d(par_ls);
repeat (i) {
	i--;
	if (surface_exists(par_ls_surfs[i])) {
		var layer_speed = layer_get_depth(par_ls[i])/100;
		var xl =  bb + w_screen/view_zoom - lerp(parallax_origo_x, x, layer_speed)/view_zoom;
		var yl =  h_screen/view_zoom - lerp(parallax_origo_y, y, layer_speed)/view_zoom;
		
		if (anyclouds && cloud_layers[i]) {
			draw_surface_stretched(par_ls_surfs[i], xl + cloud_speed*cloud_time, yl, onscreen_w, onscreen_h);
			draw_surface_stretched(par_ls_surfs[i], xl + cloud_speed*cloud_time - onscreen_w, yl, onscreen_w, onscreen_h);
		} else draw_surface_stretched(par_ls_surfs[i], xl, yl, onscreen_w, onscreen_h);
	}
}

//room surface
if (surface_exists(surf_room)) {
	var layer_speed = 1;
	var xl =  bb + w_screen/view_zoom - lerp(parallax_origo_x, x, layer_speed)/view_zoom;
	var yl =  h_screen/view_zoom - lerp(parallax_origo_y, y, layer_speed)/view_zoom;
    draw_surface_stretched(surf_room, xl , yl , onscreen_w, onscreen_h);
}


with(obj_redmts_mist) {
	var view_zoom_ = other.view_zoom
	var layer_speed = 1+z;
	var xl =  other.bb + other.w_screen/view_zoom_ - lerp(other.parallax_origo_x, other.x, layer_speed)/view_zoom_;
	var yl =  other.h_screen/view_zoom_ - lerp(other.parallax_origo_y, other.y, layer_speed)/view_zoom_;
	draw_sprite_ext(spr_redmts_mist, imagenr, xl+x/view_zoom_, yl+y/view_zoom_, (1+0.3*z)/view_zoom_, (1+0.3*z)/view_zoom_, 0, c_white, 1-abs(2*z-1));
}
