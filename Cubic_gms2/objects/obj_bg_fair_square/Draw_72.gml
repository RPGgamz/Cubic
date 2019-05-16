
if (!surface_exists(surf)) surf = surface_create(120,108);

surface_set_target(surf);
draw_clear(make_color_hsv(bg_hue, bg_sat, bg_val));

var xx = 0;
repeat(9) {
	var yy = 0;
	repeat(9) {
		draw_set_color(make_color_hsv(bg_hue, bg_sat, bg_val + square_vals[xx,yy]));
		draw_rectangle(7+xx*12, 1+yy*12, 16+xx*12, 10+yy*12, false);
		yy++;
	}
	xx++;
}
surface_reset_target();
draw_set_color(c_white)