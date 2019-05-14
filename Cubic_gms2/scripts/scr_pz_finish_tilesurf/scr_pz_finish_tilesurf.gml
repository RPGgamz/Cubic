if (event_type == ev_draw && event_number == 0) {
	gpu_set_blendmode(bm_normal)
	surface_reset_target();
	draw_clear(obj_pz.bg_color)
	draw_arrow(0,0,200,200,10)
	draw_surface(obj_pz.tilesurf, 0, 0);
	
}

/*
	gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
	gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);