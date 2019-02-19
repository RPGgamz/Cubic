


//save collectibles
var num = instance_number(obj_rpg_collectible);
save_col = [];

var i = num;
repeat (num) {
	i--; //i actually starts at num-1
	save_col[i, 0] = instance_find(obj_rpg_collectible, i);
	save_col[i, 1] = save_col[i, 0].x;
	save_col[i, 2] = save_col[i, 0].y;
	save_col[i, 3] = save_col[i, 0].object_index;
}

//save enemies
var num = instance_number(obj_rpg_enemy)
save_enem = [];

var i = num;
repeat (num) {
	i--; //i actually starts at num-1
	save_enem[i, 0] = instance_find(obj_rpg_enemy, i);
	save_enem[i, 1] = save_enem[i, 0].x;
	save_enem[i, 2] = save_enem[i, 0].y;
	save_enem[i, 3] = save_enem[i, 0].object_index;
	save_enem[i, 4] = save_enem[i, 0].dir;
}

//save locks
var num = instance_number(obj_rpg_lock)
save_lock = [];

var i = num;
repeat (num) {
	i--; //i actually starts at num-1
	save_lock[i, 0] = instance_find(obj_rpg_lock, i);
	save_lock[i, 1] = save_lock[i, 0].x;
	save_lock[i, 2] = save_lock[i, 0].y;
	save_lock[i, 3] = save_lock[i, 0].object_index;
}

//save player variables
save_pl = [];
save_pl[0] = obj_rpg_control.player;
save_pl[1] = save_pl[0].x;
save_pl[2] = save_pl[0].y;
save_pl[3] = obj_rpg_control.keys;
save_pl[4] = obj_rpg_control.coins;
save_pl[5] = obj_rpg_control.swordlvl;