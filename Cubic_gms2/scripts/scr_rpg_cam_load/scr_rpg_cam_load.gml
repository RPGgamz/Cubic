

//load collectibles
var i = array_height_2d(save_col);
repeat(i) {
	i--;
	if (instance_exists(save_col[i, 0])) instance_destroy(save_col[i, 0]);
	save_col[i, 0] = instance_create( save_col[i, 1], save_col[i, 2], save_col[i, 3] );
}

//load enemies
var i = array_height_2d(save_enem);
repeat(i) {
	i--;
	if (instance_exists(save_enem[i, 0])) instance_destroy(save_enem[i, 0]);
	save_enem[i, 0] = instance_create( save_enem[i, 1], save_enem[i, 2], save_enem[i, 3] );
	save_enem[i, 0].dir = save_enem[i, 4]
}

//load locks
var i = array_height_2d(save_lock);
repeat(i) {
	i--;
	if (instance_exists(save_lock[i, 0])) instance_destroy(save_lock[i, 0]);
	save_lock[i, 0] = instance_create( save_lock[i, 1], save_lock[i, 2], save_lock[i, 3] );
}

//load player variables
obj_rpg_control.player = save_pl[0];
save_pl[0].x = save_pl[1];
save_pl[0].y = save_pl[2];
obj_rpg_control.keys = save_pl[3];
obj_rpg_control.coins = save_pl[4];

