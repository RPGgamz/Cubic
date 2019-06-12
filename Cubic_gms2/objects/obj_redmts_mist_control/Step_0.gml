var killed = 0;
var i = 0;
while (i < instance_number(obj_redmts_mist)) {
	var mist = instance_find(obj_redmts_mist, i)
	mist.x += 0.04 + 0.06*mist.lay
	
	if (mist.x > room_width + mist_width) {
		instance_destroy(mist);
		killed++;
	} else i++;
}

repeat(killed) {
	held_mists++;
	if (random(1) <= held_mists*cluster_chance) {
		x = -mist_width
		y = random_range(0, room_height);
		repeat(held_mists) {
			var mist = instance_create(x, y, obj_redmts_mist);
			mist.lay = random(1);
			mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
			y += random_range(-cluster_yvar, cluster_yvar);
			x += random_range(-cluster_yvar, cluster_yvar);
		}
		held_mists = 0;
	}
}
