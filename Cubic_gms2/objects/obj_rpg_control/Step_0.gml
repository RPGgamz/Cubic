///@description state

switch (state) {
	case idle:
		
			#region
			//go to playermove state
			if (scr_save_dir_key()) {
				obj_control.slide_dir = queued_dir;
				player.move = player_spd;
				
				//unlock doors
				//var lock = instance_place(x+scr_dx(0), y+scr_dy(0), obj)
				
				state = playermove
				
				player.step = 0;
				
				//prepare enemies dir variable for their move
				with (obj_rpg_enemy) {
					alarm[0] = 1;
				}
			}
			#endregion
		
		break;
	case playermove:
		
			#region
			with (player) {
				move = other.player_spd;
				//collide with solids
			    while (scr_collide_with_solid() && move > 0) {
			        move -= 1;
			    }
			    if (move != other.player_spd) {
					scr_move_me();
					
			        move = other.player_spd;
					if (other.keys > 0) {
						var lock = instance_place(x+scr_dx(0), y+scr_dy(0), obj_rpg_lock)
						if instance_exists(lock) {
							other.keys --;
							lock.alarm[0] = 1;
						}
					}
					
			        step = max_steps;
			    } else if (step < max_steps) {
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
				 state = enemymove
					with (obj_rpg_enemy) {
						if position_meeting(x, y, other.cam) step = 0;
						else step = max_steps;
					}
				}
				#endregion
		
		break;
	case enemymove:
		
			#region
			for (var i = 0; i < instance_number(obj_rpg_enemy); i++) {
			    var enemy = instance_find(obj_rpg_enemy, i);
			    if (enemy.step < enemy.max_steps) {
					with (enemy) {
						move = other.enemy_spd;
						obj_control.slide_dir = dir;
						while (scr_collide_with_solid() && move > 0) {
					        move -= 1;
					    }
					    if (move != other.enemy_spd) {
					        scr_move_me();
					        step = max_steps;
					    }
					}
				}
			}
			
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
				cam = instance_position(player.x, player.y, obj_rpg_camera_zone);
				//camera_set_begin_script()
				
			} else with (obj_rpg_enemy) if (step < max_steps) {
		        scr_move_me();
		        step++;
		    }
			#endregion
		
		break;
}