draw_self();


//draw_cubes and text
var E = 1;
repeat(e_max) {
	if (s_date[E] == "") {
		draw_text(x+40, 23+E*15, "EMPTY FILE");
	} else {
		draw_sprite(spr_pause_SAVES_cube, E-1, x+9, 20+E*15);
		if !(selected && E == e) {
			var starcount = obj_save_data.star_count;
			if (E != obj_save_data.save_current) {
				ini_open("savedata.ini")
				starcount = ini_read_real("save" + string(E), "star_count", 0)
				ini_close();
			}
			draw_text(x+22, 23+E*15, string(starcount) + "*")
			draw_text(x+37,20+E*15, s_date[E]);
		} else draw_text(x+40, 20+E*15, "LOAD FILE"+"\n"+"DELETE FILE");
	}
	E++;
}


//draw selection dot
if ((!selected && (e == e_max+1)) || (selected && (e2 == e2_max+1))) {
	//back
	var xx = x+39;
	var yy = 86;
} else {
	var xx = x+x_0;
	var yy = 24+e*15;
	if (s_date[e] == "") xx += 31;
	if (selected) {
		xx += 31;
		yy += e2*6-9;
	}
}
draw_rectangle(xx, yy, xx+1, yy+1, false);

