/// @description follow
if (!instance_exists(player_cube)) {show_debug_message("camera_follow self destruct! :D"); instance_destroy(); exit;}

//target
var targ_x = player_cube.x;
var targ_y = player_cube.y;
if			(targ_x > room_width - w_screen)	targ_x = lerp(targ_x, room_width - w_screen, border_hardness);
else if		(targ_x < w_screen)					targ_x = lerp(targ_x, w_screen, border_hardness);
if			(targ_y > room_height - h_screen)	targ_y = lerp(targ_y, room_height - h_screen, border_hardness);
else if		(targ_y < h_screen)					targ_y = lerp(targ_y, h_screen, border_hardness);

//move
x = targ_x + (x-targ_x)*0.92;
y = targ_y + (y-targ_y)*0.92;
