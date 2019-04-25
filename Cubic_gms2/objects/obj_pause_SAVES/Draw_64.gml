draw_self();

var E = 1;

//draw_cubes and text
repeat(e_max) {
	draw_sprite(spr_pause_SAVES_cube, E-1, x+9, 20+E*15);
	if (!selected || E != e) draw_text(x+37,20+E*15, s_date[E]);
	else draw_text(x+40, 20+E*15, "LOAD FILE"+"\n"+"DELETE FILE");
	E++;
}

//draw selection dot
if ((!selected && (e == e_max+1)) || (selected && (e2 == e2_max+1))) {
	var xx = x+39;
	var yy = 86;
} else {
	var xx = x+x_0;
	var yy = 24+e*15;
	if (selected) {
		xx += 31;
		yy += e2*6-9;
	}
}
draw_rectangle(xx, yy, xx+1, yy+1, false);

