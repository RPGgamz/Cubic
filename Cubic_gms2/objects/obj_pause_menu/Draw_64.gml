
var bb = (obj_display_manager.ideal_width-120)/2;

draw_set_alpha(0.5);
draw_set_color(c_dkgray);
draw_rectangle(bb, 0, bb+120, 108, false);

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_set_alpha(0.9);

var xx = bb+60;
var dyy = 15;
var yy = 54-(array_length_1d(current)-1)*dyy/2;

var i = 0;
repeat(array_length_1d(current)) {
	draw_text_transformed(xx,yy,current[i], 0.75, 0.75, 0)
	i++
	yy += dyy;
}



draw_set_color(c_white);