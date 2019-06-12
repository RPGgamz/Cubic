
mist_width = sprite_get_width(spr_redmts_mist);

cluster_chance = 1/2
cluster_yvar = 3;
cluster_xvar = 5;

var prob_new = 1;
repeat(20) {
	var mist = instance_create(0,0,obj_redmts_mist);
	mist.lay = random(1);
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

held_mists = 0;