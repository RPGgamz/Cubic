var performance_boost = 2;
var count = 0;
var m = 0;
repeat(instance_number(obj_bg_barcodebar)) {
	var thisbar = instance_find(obj_bg_barcodebar, m)
	var fullbreak = false;
	var dist = 0;
	repeat(thisbar.sense_range/performance_boost) {
		
		var n = 0;
		repeat(instance_number(obj_bg_barcodebar)) {
			var otherbar = instance_find(obj_bg_barcodebar, n);
			if (otherbar != thisbar) {
				count++;
				if (abs(otherbar.x - (thisbar.x+thisbar.vel*dist*performance_boost)) <= abs(thisbar.vel*performance_boost)) {
					fullbreak = true;
					break;
				}
			}
			n++;
		}
		
		dist++;
		if (fullbreak) break;
	}
	
	thisbar.vel = thisbar.vel*thisbar.acc*power((dist*performance_boost/thisbar.sense_range), thisbar.brake_power);
	
	m++;
}
show_debug_message(count)
with (obj_bg_barcodebar) {
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