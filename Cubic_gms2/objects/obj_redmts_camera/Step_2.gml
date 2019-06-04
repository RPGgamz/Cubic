///@description initiate surfaces

var i = 0;
repeat(array_length_1d(par_ls)) {
	if (!surface_exists(par_ls_surfs[i])) {
		par_ls_surfs[i] = surface_create(room_width, room_height);
	}
	i++;
}
layer_counter = 0; //refferenced in the layer begin script