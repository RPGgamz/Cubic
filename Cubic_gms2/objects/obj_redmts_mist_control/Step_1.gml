/// @description initiate mists

if (held_mists == -1) {
	if (mists = -1) mists = 15*round(sprite_width*sprite_height/(120*108));
	
	min_x = x;
	min_y = y;
	max_x = x+sprite_width;
	max_y = y+sprite_height;
	mist_creation_xoffset = -((min_dx + max_extra_dx/2)/max_dz) * sprite_width/120;
	
	/*prob_new = 1;
	repeat(mists) {
		var mist = instance_create(0,0,obj_redmts_mist);
		mist.z = random(1);
		mist.dz = random_range(-max_dz, max_dz);
		if (random(1) <= prob_new) {
			x = random_range(min_x-mist_width, max_x+mist_width);
			y = random_range(min_y, max_y);
			prob_new = cluster_chance;
		} else {
			prob_new += (1-prob_new)*cluster_chance;
			x += random_range(-cluster_xvar, cluster_xvar);
			y += random_range(-cluster_yvar, cluster_yvar);
		}
		mist.x = x;
		mist.y = y;
		mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
	}*/
	repeat(mists) {
		var mist = instance_create(0,0,obj_redmts_mist);
		mist.z = random(1);
		mist.dz = random_range(-max_dz, max_dz);
		
		mist.x = random_range(min_x-mist_width, max_x+mist_width);
		mist.y = random_range(min_y, max_y);
		mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
	}
	
	
	held_mists = 0;

}