//if (event_type == ev_draw && event_number == 0) {
	
	/*/
	show_debug_message(obj_camera.layer_counter)
	show_debug_message(layer_get_depth(obj_camera.par_ls[obj_camera.layer_counter]))
	//*/
	
	surface_set_target(obj_camera.par_ls_surfs[obj_camera.layer_counter]);
	obj_camera.layer_counter++;
	if (obj_camera.layer_counter >= array_length_1d(obj_camera.par_ls)) obj_camera.layer_counter = 0;

