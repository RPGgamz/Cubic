
with (obj_bg_barcodebar) {
	if (random(other.die_chance) <= 1) fade_dir = -1;
	y = min(y + fade_dir*obj_bg_bar_code.fade_speed, max_val)
	x += vel;
	if (y < 0) instance_destroy();
	if (x+width < 0 || x > 120) {
		with (other) event_user(0);
		instance_destroy();
	}
}

if (random(spawn_chance) <= 1) event_user(0);