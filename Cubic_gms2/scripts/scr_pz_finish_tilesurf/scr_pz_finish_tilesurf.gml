if (event_type == ev_draw && event_number == 0) {
	gpu_set_blendmode(bm_normal)
	surface_reset_target();
	if instance_exists(obj_pz.bg) draw_surface((obj_pz.bg).surf, __view_get( e__VW.XView, 1 ) + (obj_display_manager.ideal_width-120)/2, __view_get( e__VW.YView, 1 ))
	else draw_clear(obj_pz.bg_color);
	draw_surface(obj_pz.tilesurf, 0, 0);
	
}
