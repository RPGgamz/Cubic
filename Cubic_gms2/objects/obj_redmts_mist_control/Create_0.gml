
mist_width = sprite_get_width(spr_redmts_mist);

cluster_chance = 1/2;
cluster_yvar = 3;
cluster_xvar = 10;

min_dx = 0.04;
max_extra_dx = 0.06
max_dz = 1/600;

var prob_new = 1;
repeat(25) {
	var mist = instance_create(0,0,obj_redmts_mist);
	mist.z = random(1);
	mist.dz = random_range(-max_dz, max_dz);
	if (random(1) <= prob_new) {
		x = random_range(-mist_width,room_width+mist_width);
		y = random_range(0,room_height);
		prob_new = cluster_chance;
	} else {
		prob_new += cluster_chance;
		x += random_range(-cluster_xvar, cluster_xvar);
		y += random_range(-cluster_yvar, cluster_yvar);
	}
	mist.x = x;
	mist.y = y;
	mist.imagenr = irandom(sprite_get_number(spr_redmts_mist));
}

mist_creation_xoffset = -(min_dx + max_extra_dx/2)/max_dz;

held_mists = 0;

/*/perfectionism =]
n = 30;
alarm[0] = 60*30;
