///@description state

switch (state) {
	case idle:
		#region
		
			//go to playermove state
			if (scr_save_dir_key()) {
				obj_control.slide_dir = queued_dir;
				state = playermove
			
				player.step = 0;
				player.stop_check_done = false;
			
				//prepare enemies dir variable
				with (obj_rpg_enemy) {
					alarm[0] = 1;
				}
			}
			
		#endregion
		break;
	case playermove:
		#region
			
			//collisions
			//scr_rpg_collisions
			///var lock = instance_place(x+scr_dx(0), y+scr_dy)
			
			with (player) {
				scr_push(id);
				if (step < max_steps) {
		            scr_move_me();
		            stop_check_done = false;
		            step++;
		        }
			}
		
			//go to enemymove state
			 if (player.step >= player.max_steps) {
				 state = enemymove
					with (obj_rpg_enemy) {
					    step = 0;
					    stop_check_done = false;
					}
				}
				
		#endregion
		break;
	case enemymove:
		#region
		
			var stop_enemymove = true;
			for (var i = 0; i < instance_number(obj_rpg_enemy); i++) {
			    var enemy = instance_find(obj_rpg_enemy, i);
			    if (enemy.step < enemy.max_steps) {
			        stop_enemymove = false;
					obj_control.slide_dir = enemy.dir;
					scr_push(enemy);
				}
			}
			if (stop_enemymove) {
				state = idle;
			} else with (obj_rpg_enemy) if (step < max_steps) {
		        scr_move_me();
		        stop_check_done = false;
		        step++;
		    }
		
		#endregion
		break;
}