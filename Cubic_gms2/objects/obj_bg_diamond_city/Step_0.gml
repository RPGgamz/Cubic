
//move all diamonds
with (obj_bg_diamond) {
	x += other.x;
	y += other.y;
	
	if (x > 137 || y > 137 || x < -33 || y < -33) {
		repeat(1) { //lol
			if (x > 137) {
				instance_create(x-170, y, obj_bg_diamond);
				break;
			}
			if (y > 137) {
				instance_create(x, y-170, obj_bg_diamond);
				break;
			}
			if (x < -33) {
				instance_create(x+170, y, obj_bg_diamond);
				break;
			}
			if (y < -33) {
				instance_create(x, y+170, obj_bg_diamond);
				break;
			}
		}
		instance_destroy();
	}
}

//roll for new tt pos
if (irandom(change_chance) <= 1) {
	var new_tt_spd = random(max_spd);
	var new_tt_ang = random(2*pi);
	tt_x = cos(new_tt_ang)*new_tt_spd;
	tt_y = sin(new_tt_ang)*new_tt_spd;
	show_debug_message("new tt: ("+string(tt_x)+", "+string(tt_y)+")")
	show_debug_message("t: ("+string(t_x)+", "+string(t_y)+")")
	show_debug_message("vel: ("+string(x)+", "+string(y)+")")
}

//update t
var dist = point_distance(t_x, t_y, tt_x, tt_y);
if (dist <= t_spd) {
	t_x = tt_x;
	t_y = tt_y;
} else {
	t_x += cos(arccos((tt_x-t_x)/dist))*t_spd;
	t_y += sin(arcsin((tt_y-t_y)/dist))*t_spd;
}

//update vel
x += spd_pr_dist*(t_x-x);
y += spd_pr_dist*(t_y-y);

