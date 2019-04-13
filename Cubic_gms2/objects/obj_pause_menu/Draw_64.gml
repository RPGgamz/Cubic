
var bb = (obj_display_manager.ideal_width-120)/2;

draw_set_alpha(0.5);
draw_set_color(c_dkgray);
draw_rectangle(bb, 0, bb+120, 108, false);

var xx = bb+60;
var dyy = 15;
var yy = 54-(array_height_2d(menu_current)-1)*dyy/2;
var i = 0;


draw_set_color(c_ltgray);
draw_rectangle(xx-50, yy+selected*dyy-8, xx+50, yy+selected*dyy+8, false);

draw_set_alpha(0.9);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_black);
repeat(array_height_2d(menu_current)) {
	if (i == selected) draw_text_transformed(xx, yy, menu_current[i, label], 0.7, 0.7, 0);
	else draw_text_transformed(xx, yy, menu_current[i, label], 0.6, 0.6, 0);
	i++
	yy += dyy;
}

draw_set_color(c_white);