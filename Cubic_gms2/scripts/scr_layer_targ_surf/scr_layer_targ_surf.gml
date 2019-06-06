if (event_type == ev_draw && event_number == 0) {
	
	var i = 0;
	repeat(array_length_1d(obj_camera.par_ls)) {
		if (obj_camera.par_ls[i] == layer) break;
		i++;
	}
	
	surface_set_target(obj_camera.par_ls_surfs[i]);
}