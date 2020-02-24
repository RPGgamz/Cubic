
if (!surface_exists(surf)) surf = surface_create(120*surf_scaler,108*surf_scaler);

surface_set_target(surf);
draw_clear(make_color_hsv(bg_hue, bg_sat, bg_val));


var i = c_n;
while (--i != 0) {
	draw_set_color(c_ltgray)
	draw_rectangle(c_x[i], c_y[i], c_x[i]+c_s-1, c_y[i]+c_s-1, false)
	draw_set_color(c_orange)
	draw_rectangle(c_x[i], c_y[i], c_x[i]+c_s-1, c_y[i]+c_s-1, true)
}
surface_reset_target();
draw_set_color(c_white)