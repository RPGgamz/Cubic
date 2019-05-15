
if (!surface_exists(surf)) surf = surface_create(120,108);

surface_set_target(surf);
draw_clear(make_color_hsv(bg_hue, bg_sat, bg_val));

with (obj_bg_diamond) {
	var i = 0;
	repeat(4) {
		if (ring[i] == 1) draw_sprite(sprite_index, i, x, y);
		i++;
	}
}


surface_reset_target();
draw_set_color(c_white)