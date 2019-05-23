
with (obj_bg_barcodebar) {
	var dist = 1;
	repeat(other.bar_sense_range*width) {
		var n = 0;
		var fullbreak = false;
		repeat(instance_number(obj_bg_barcodebar)) {
			var otherbar = instance_find(obj_bg_barcodebar, n);
			if (otherbar == self) continue;
			if (abs(x+vel*dist - otherbar.x) <= vel) {
				fullbreak = true;
				break;
			}
			n++;
		}
		if (fullbreak) break;
		dist++;
	}
	
	vel = vel*dist/(other.bar_sense_range*width)
	x += vel;
	
	if (random(other.die_chance) <= 1) fade_dir = -1;
	y = min(y + fade_dir*obj_bg_bar_code.fade_speed, max_val)
	if (y < 0) instance_destroy();
	if (x+width < 0 || x > 120) {
		with (other) event_user(0);
		instance_destroy();
	}
}

if (random(spawn_chance) <= 1) event_user(0);