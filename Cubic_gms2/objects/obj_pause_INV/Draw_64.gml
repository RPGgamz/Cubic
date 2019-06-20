draw_self();

//draw items and zoomed version of selected
var i = -1;
repeat(30) {
	i++;
	var obj = scr_item_get_obj(i);
	if (obj == -1) continue;
	if (ds_map_find_value(obj_save_data.items, obj) == -1) {
		var x_tile = i mod 5;
		var y_tile = i div 5;
		draw_sprite(object_get_sprite(obj), 0, x+19+11*x_tile, 24+11*y_tile);
		if (s_y == y_tile && s_x == x_tile) {
			draw_sprite(object_get_sprite(obj), 1, x+81, 23);
			draw_text(x+74, 43, scr_item_get_title(obj));
			draw_rectangle(x+74, 48, x+72+string_width(scr_item_get_title(obj)), 48, false);
			draw_text(x+74, 51, scr_item_get_text(obj));
		}
	}
}


if (s_y != inv_height-1) {
	var xx = x+12 + s_x*11;
	var yy = y+17 + s_y*11;
	
	draw_sprite(spr_pause_INV_s, 0, xx,yy);
} else draw_rectangle(x+40, y+95, x+41, y+96, false);