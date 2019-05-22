
with (obj_bg_barcodebar) {
	//if (random(other.die_chance) <= 1) //die
}

if (random(spawn_chance) <= 1) {
	var bar = instance_create(random(120), 0, obj_bg_barcodebar);
	bar.max_val = irandom(max_value-1)+1;
	bar.width = irandom(max_width-1)+1;
	bar.vel = random_range(-max_speed, max_speed);
}