var killed = 0;
var i = 0;
while (i < instance_number(obj_redmts_mist)) {
	var mist = instance_find(obj_redmts_mist, i);
	mist.x += min_dx + max_extra_dx*mist.z
	mist.z += mist.dz;
	
	if (mist.x > room_width + mist_width || mist.z < 0 || mist.z > 1) {
		instance_destroy(mist);
		killed++;
	} else i++;
}

repeat(killed) {
	held_mists++;
	if (random(1) <= held_mists*cluster_chance) {
		x = random_range(-mist_width,room_width+mist_width) + mist_creation_xoffset;
		y = random_range(0, room_height);
		repeat(held_mists) {
			var mist = instance_create(x, y, obj_redmts_mist);
			mist.z = choose(0,1);
			mist.dz = sign(0.5-mist.z)*random(max_dz);
			mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
			y += random_range(-cluster_yvar, cluster_yvar);
			x += random_range(-cluster_yvar, cluster_yvar);
		}
		held_mists = 0;
	}
}
