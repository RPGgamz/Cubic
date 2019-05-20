
if (!surface_exists(surf)) surf = surface_create(120*surf_scaler,108*surf_scaler);

surface_set_target(surf);
draw_clear(make_color_hsv(bg_hue, bg_sat, bg_val));


with (obj_bg_diamond) {
	var i = 0;
	repeat(4) {
		if (ring[i] == 1) draw_sprite_stretched(sprite_index, i, x*other.surf_scaler, y*other.surf_scaler, sprite_width*other.surf_scaler, sprite_height*other.surf_scaler);
		i++;
	}
}


surface_reset_target();
draw_set_color(c_white)