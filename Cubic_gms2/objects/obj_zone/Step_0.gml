/// @description Switch animation & make particle
var ww = sprite_width/2;
if (idle_ready_teleport != "teleport") {
	idle_ready_teleport = "";
	if ((position_meeting(x+ww, y+ww, obj_cube)) || (position_meeting(x-ww, y-ww, obj_cube))) {
		if (instance_exists(obj_pause_menu)) idle_ready_teleport = "ready";
		else if ((obj_control.state != scr_move) && (obj_control.queued_dir == "still")) idle_ready_teleport = "ready";
	} 
	if (idle_ready_teleport == "") idle_ready_teleport = "idle";
}

//make particle
if (object_index != obj_zone_exit && !completed && random(1) <= 1/90) {
	pp = -200;
	if (idle_ready_teleport = "idle") {
		pp = irandom_range(-18,59);
		if (pp < 0) pp = -pp-1
		repeat(1) {
			if (pp <= 7 || pp > 51) {
				px = (pp mod 52)-4;
				break;
			}
			if (pp <= 17 ||pp > 41) {
				px = (pp mod 34)-7-5;
				break;
			}
			px = choose(-5, -4, 3, 4)
		}
		repeat(1) {
			if (pp <= 7) {
				py = -5;
				break;
			}
			if (pp <= 17) {
				py = -4;
				break;
			}
			if (pp <= 41) {
				py = ((pp-18) div 4) - 3;
				break;
			}
			if (pp <= 51) {
				py = 3;
				break;
			}
			py = 4;
			break;
		}
	}
	else if (idle_ready_teleport = "ready") {
		pp = irandom_range(-22,75);
		if (pp < 0) pp = -pp-1
		repeat(1) {
			if (pp <= 9 || pp > 65) {
				px = (pp mod 66)-5;
				break;
			}
			if (pp <= 21 ||pp > 53) {
				px = (pp mod 45)-9-6;
				break;
			}
			px = choose(-6, -5, 4, 5)
		}
		repeat(1) {
			if (pp <= 9) {
				py = -6;
				break;
			}
			if (pp <= 21) {
				py = -5;
				break;
			}
			if (pp <= 53) {
				py = ((pp-22) div 4) - 4;
				break;
			}
			if (pp <= 65) {
				py = 4;
				break;
			}
			py = 5;
			break;
		}
	}
	if (pp != -200) instance_create(x+px, y+py, obj_zone_particle);
}