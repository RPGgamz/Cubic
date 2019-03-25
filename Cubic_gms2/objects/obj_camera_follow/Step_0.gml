/// @description follow
if (!instance_exists(player_cube)) {show_debug_message("camera_follow self destruct! :D"); instance_destroy(); exit;}

//target
var targ_x = player_cube.x;
var targ_y = player_cube.y;
if			(targ_x > room_width - w_screen)	targ_x = lerp(targ_x, room_width - w_screen, border_hardness);
else if		(targ_x < w_screen)					targ_x = lerp(targ_x, w_screen, border_hardness);
if			(targ_y > room_height - h_screen)	targ_y = lerp(targ_y, room_height - h_screen, border_hardness);
else if		(targ_y < h_screen)					targ_y = lerp(targ_y, h_screen, border_hardness);

/*/accelerate
var x_acc = dcos(-point_direction(x,y,targ_x,targ_y))*acceleration;
var y_acc = dsin(-point_direction(x,y,targ_x,targ_y))*acceleration;

x_vel += x_acc;
y_vel += y_acc;


//move
x += x_vel;
y += y_vel;

/*/
x = targ_x;
y = targ_y;