///@description state

//move queue
if (scr_save_dir_key()) alarm[0] = 10;

//STATES
switch (state) {
	case idle:
		
			#region
			//attempt to go to playermove state
			if (queued_dir = "left" || queued_dir = "right" || queued_dir = "up"|| queued_dir = "down") {
				obj_control.slide_dir = queued_dir;
				queued_dir = "";
				with (player) {
					move = other.player_spd;
					//collide with solids
				    if (scr_collide_with_solid()) {
						//unlock doors
						if (other.keys > 0) {
							var lock = instance_place(x+scr_dx(0), y+scr_dy(0), obj_rpg_lock)
							if instance_exists(lock) {
								other.keys --;
								lock.alarm[0] = 1;
							}
						}
						move = 0;
					} else {
						//collide with enemies (attack)
						var enemy = instance_place(x+scr_dx(12-move) , y+scr_dy(12-move), obj_rpg_enemy);
						if instance_exists(enemy) {
							instance_destroy(enemy);
							move = 0;
						}
					}
					
				}
				//don't go to playermove state
				if (player.move == 0) break;
				
				//go to playermove state
				state = playermove
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
				//move to other rooms
				var prev_cam = cam;
				cam = instance_position(player.x, player.y, obj_rpg_camera_zone);
				if (prev_cam != cam) {
					scr_rpg_cam_focus();
					state = idle;
					break;
				}
				//pick up items
				with (player) {
					var item = instance_place(x, y, obj_rpg_collectible);
					if instance_exists(item) item.alarm[0] = 1;
				}
				//go to enemymove state
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
									with (other.cam) scr_rpg_cam_load();
									other.state = other.idle;
								} else instance_destroy(col);
								step = max_steps;
							}
							
						}
					} else step = max_steps;
				}
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