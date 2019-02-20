state = enemymove
with (obj_rpg_enemy) {
	if ((object_index == obj_rpg_enemyF) && !visible) image_index = 0;
	if position_meeting(x, y, other.cam) {
		script_execute(updatedir);
		obj_control.slide_dir = dir;
		move = other.enemy_spd;
		step = 0;
		//collide with solid
		if (scr_collide_with_solid()) {
			step = max_steps;
		} else {
			//collide with others (attack)
			var col = instance_place(x+scr_dx(12-move) , y+scr_dy(12-move), obj_rpg_character);
			if instance_exists(col) {
				if (col.object_index == obj_rpg_player) {
					scr_rpg_damage_player();
				} else instance_destroy(col);
				step = max_steps;
			}
		}
	} else step = max_steps;
}