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
			        step = max_steps;
			    } else if (step < max_steps) {
		            scr_move_me();
		            step++;
		        }
			}
		
			//go to enemymove state
			 if (player.step >= player.max_steps) {
				 state = enemymove
					with (obj_rpg_enemy) {
					    step = 0;
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
				state = idle;
			} else with (obj_rpg_enemy) if (step < max_steps) {
		        scr_move_me();
		        step++;
		    }
		
		#endregion
		break;
}