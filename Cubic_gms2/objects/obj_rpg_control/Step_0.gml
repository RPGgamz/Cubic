///@description state

//move queue
if (scr_save_dir_key()) alarm[0] = 10;

//STATES
switch (state) {
	case idle:
		
			#region
			//update enemyF
			if (prev_state != idle) with (obj_rpg_enemyF) scr_rpg_enemyF_updatedir();
			
			//go to playermove state
			if (queued_dir = "left" || queued_dir = "right" || queued_dir = "up"|| queued_dir = "down") {
				obj_control.slide_dir = queued_dir;
				queued_dir = "";
				with (player) {
					move = other.player_spd;
					//collide with solids
				    if (scr_collide_with_solid()) {
						//unlock doors
						var lock = instance_place(x+scr_dx(0), y+scr_dy(0), obj_rpg_lock_general);
						if instance_exists(lock) {
							if (object_is_ancestor(lock.object_index, obj_rpg_biglock)) {
								if (other.bigkeys > 0) {
									other.bigkeys --;
									lock.image_speed = lock.unlock_speed;
								}
							}
							else {
								if (other.keys > 0) {
									other.keys --;
									lock.image_speed = lock.unlock_speed;
								}
							}
						}
						
						move = 0;
					} else {
						//collide with enemies (attack)
						var enemy = instance_place(x+scr_dx(12-move) , y+scr_dy(12-move), obj_rpg_enemy);
						if (instance_exists(enemy)) {
							if (other.swordlvl == 0) scr_rpg_damage_player();
							else {
								scr_rpg_damage_enemy(enemy);
								move = 0;
								with (other) scr_rpg_goto_enemymovestate();
							}
						}
					}
					
				}
				//don't go to playermove state
				if (player.move == 0) break;
				
				//go to playermove state
				state = playermove;
				player.move = player_spd;
				player.step = 0;
			}
			#endregion
		
		prev_state = idle; 
		break;
	case playermove:
		
			#region
			with (player) {
				if (step < max_steps) {
		            scr_move_me();
		            step++;
		        }
			}
			
			//end playermove state
			if (player.step >= player.max_steps) {
				//pick up items
				with (player) {
					var item = instance_place(x, y, obj_rpg_collectible);
					if instance_exists(item) item.alarm[0] = 1;
				}
				//go to enemymove state
				scr_rpg_goto_enemymovestate();
			}
			#endregion
		
		prev_state = playermove; 
		break;
	case enemymove:
		
			#region
			for (var i = 0; i < instance_number(obj_rpg_enemy); i++) {
			    var enemy = instance_find(obj_rpg_enemy, i);
			    if (enemy.step < enemy.max_steps) {
					with (enemy) {
						move = other.enemy_spd;
						obj_control.slide_dir = dir;
						
						if (step < max_steps) {
					        scr_move_me();
					        step++;
					    }
					}
				}
			}
			
			//check if all have stopped
			var stop_enemymove = true;
			for (var i = 0; i < instance_number(obj_rpg_enemy); i++) {
			    var enemy = instance_find(obj_rpg_enemy, i);
			    if (enemy.step < enemy.max_steps) {
					stop_enemymove = false;
				}
			}
			if (stop_enemymove) {
				//end enemymove
				state = idle;
			}
			#endregion
		
		prev_state = enemymove; 
		break;
}