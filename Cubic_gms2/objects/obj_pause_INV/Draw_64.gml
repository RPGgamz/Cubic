draw_self();

if (s_y != inv_height-1) {
	var xx = x+12 + s_x*11;
	var yy = y+17 + s_y*11;

	//draw_rectangle(xx,yy,xx+13,yy+13,false)
	draw_sprite(spr_pause_INV_s, 0, xx,yy)
} else draw_rectangle(x+40, y+95, x+41, y+96, false);