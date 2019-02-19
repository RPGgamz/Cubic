


//save collectibles
var _ds_col = ds_list_create();
var num = instance_place_list(x, y, obj_rpg_collectible, _ds_col, false)
save_col = [];

var i = num;
repeat (num) {
	i--; //i actually starts at num-1
	save_col[i, 3] = _ds_col[| i].object_index;
	save_col[i, 2] = _ds_col[| i].y;
	save_col[i, 1] = _ds_col[| i].x;
	save_col[i, 0] = _ds_col[| i];
}
ds_list_destroy(_ds_col);

//save enemies
var _ds_enem = ds_list_create();
var num = instance_place_list(x, y, obj_rpg_enemy, _ds_enem, false)
save_enem = [];

var i = num;
repeat (num) {
	i--; //i actually starts at num-1
	save_enem[i, 4] = _ds_enem[| i].dir;
	save_enem[i, 3] = _ds_enem[| i].object_index;
	save_enem[i, 2] = _ds_enem[| i].y;
	save_enem[i, 1] = _ds_enem[| i].x;
	save_enem[i, 0] = _ds_enem[| i];
}
ds_list_destroy(_ds_enem);

//save locks
var _ds_lock = ds_list_create();
var num = instance_place_list(x, y, obj_rpg_lock, _ds_lock, false)
save_lock = [];

var i = num;
repeat (num) {
	i--; //i actually starts at num-1
	save_lock[i, 3] = _ds_lock[| i].object_index;
	save_lock[i, 2] = _ds_lock[| i].y;
	save_lock[i, 1] = _ds_lock[| i].x;
	save_lock[i, 0] = _ds_lock[| i];
}
ds_list_destroy(_ds_lock);

//save player variables
save_pl = [];
save_pl[0] = obj_rpg_control.player;
save_pl[1] = save_pl[0].x;
save_pl[2] = save_pl[0].y;
save_pl[3] = obj_rpg_control.keys;
save_pl[4] = obj_rpg_control.coins;
save_pl[5] = obj_rpg_control.swordlvl;