/// @description draw black bar

draw_set_color(c_black);
var xx =(ideal_width-120)/2;
draw_rectangle(0, 0, xx-1, 108, false);
draw_rectangle(120+xx, 0, 120+2*xx, 108, false);

