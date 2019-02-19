

//load collectibles
with (obj_rpg_collectible) instance_destroy();
var i = array_height_2d(save_col);
repeat(i) {
	i--;
	save_col[i, 0] = instance_create( save_col[i, 1], save_col[i, 2], save_col[i, 3] );
}

//load enemies
with (obj_rpg_enemy) instance_destroy();
var i = array_height_2d(save_enem);
repeat(i) {
	i--;
	save_enem[i, 0] = instance_create( save_enem[i, 1], save_enem[i, 2], save_enem[i, 3] );
	save_enem[i, 0].dir = save_enem[i, 4]
}

//load locks
with (obj_rpg_lock) instance_destroy();
var i = array_height_2d(save_lock);
repeat(i) {
	i--;
	save_lock[i, 0] = instance_create( save_lock[i, 1], save_lock[i, 2], save_lock[i, 3] );
}

//load player variables
obj_rpg_control.player = save_pl[0];
save_pl[0].x = save_pl[1];
save_pl[0].y = save_pl[2];
obj_rpg_control.keys = save_pl[3];
obj_rpg_control.coins = save_pl[4];

with (obj_rpg_control) {
	cam = instance_position(player.x, player.y, obj_rpg_camera_zone);
	scr_rpg_cam_focus();
}

//reset player hp
obj_rpg_control.hp = obj_rpg_control.max_hp;