surface_free(surf_room);

var i = 0;
repeat(array_length_1d(par_ls_surfs)) {
	surface_free(par_ls_surfs[i]);
	show_debug_message(i)
	i++;
}