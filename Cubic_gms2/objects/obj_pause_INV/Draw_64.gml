draw_self();

//ds_map_find_next(obj_save_data.items)


if (s_y != inv_height-1) {
	var xx = x+12 + s_x*11;
	var yy = y+17 + s_y*11;

	draw_sprite(spr_pause_INV_s, 0, xx,yy)
} else draw_rectangle(x+40, y+95, x+41, y+96, false);