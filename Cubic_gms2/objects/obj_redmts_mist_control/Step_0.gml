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
	
	/*held_mists++;
	if (random(1) <= prob_new) {
		x = random_range(min_x-mist_width, max_x+mist_width) + mist_creation_xoffset;
		y = random_range(min_y, max_y);
		repeat(held_mists) {
			var mist = instance_create(x, y, obj_redmts_mist);
			mist.z = choose(0,1);
			mist.dz = sign(0.5-mist.z)*random(max_dz);
			mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
			y += random_range(-cluster_yvar, cluster_yvar);
			x += random_range(-cluster_yvar, cluster_yvar);
		}
		held_mists = 0;
		prob_new = cluster_chance;
	} else prob_new += (1-prob_new)*cluster_chance;*/
	
	var mist = instance_create(random_range(min_x-mist_width, max_x+mist_width) + mist_creation_xoffset, random_range(min_y, max_y), obj_redmts_mist);
	mist.z = choose(0,1);
	mist.dz = sign(0.5-mist.z)*random(max_dz);
	mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
	
}
