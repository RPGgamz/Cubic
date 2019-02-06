


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

//save doors

//save player variables
