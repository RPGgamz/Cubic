
if (!surface_exists(surf)) surf = surface_create(120,108);

surface_set_target(surf);
draw_clear(make_color_hsv(bg_hue, bg_sat, bg_val));


repeat(9) {
	
		draw_set_color(make_color_hsv(bg_hue, bg_sat, bg_val + square_vals[xx,yy]));
		draw_rectangle();
		
}
surface_reset_target();
draw_set_color(c_white)