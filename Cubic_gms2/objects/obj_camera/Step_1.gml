/// @description set target position
show_debug_message("cambegstep")
if (!instance_exists(player_cube)) {show_debug_message("camera object self destruct! :D"); instance_destroy();}
targ_x = player_cube.x;
targ_y = player_cube.y;
if			(targ_x > room_width - w_screen)	targ_x = lerp(targ_x, room_width - w_screen, border_hardness);
else if		(targ_x < w_screen)					targ_x = lerp(targ_x, w_screen, border_hardness);
if			(targ_y > room_height - h_screen)	targ_y = lerp(targ_y, room_height - h_screen, border_hardness);
else if		(targ_y < h_screen)					targ_y = lerp(targ_y, h_screen, border_hardness);