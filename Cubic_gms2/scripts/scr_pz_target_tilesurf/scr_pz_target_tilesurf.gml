if (event_type == ev_draw && event_number == 0) {
	if (!surface_exists(obj_pz.tilesurf)) {
		obj_pz.tilesurf = surface_create(room_width, room_height);
	}
	surface_set_target(obj_pz.tilesurf)
	draw_clear_alpha(obj_pz.bg_color, 0);
	gpu_set_blendmode_ext_sepalpha(bm_one, bm_one,bm_one,bm_zero);
}