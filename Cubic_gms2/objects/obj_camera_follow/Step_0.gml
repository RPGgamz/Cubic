/// @description follow
if (!instance_exists(player_cube)) {show_debug_message("camera_follow self destruct! :D"); instance_destroy(); exit;}


//define target position
var targ_x = player_cube.x;
var targ_y = player_cube.y;
if (targ_x < w_bor) targ_x = (w_bor*weight_bor+targ_x)/(weight_bor+1)
else if (targ_x > room_width-w_bor) targ_x = ((room_width-w_bor)*weight_bor+targ_x)/(weight_bor+1)
if (targ_y < h_bor) targ_y = (h_bor*weight_bor+targ_y)/(weight_bor+1)
else if (targ_y > room_height-h_bor) targ_y = ((room_height-h_bor)*weight_bor+targ_y)/(weight_bor+1)
var dd = point_distance(x, y, targ_x, targ_y);
var ang = point_direction(x, y, targ_x, targ_y);

//accelerate
if (dd-1 > sqr(vel)/(2*a)) {
	vel += a;
} else {
	vel -= a;
	if (vel < 0) vel = 0;
}

show_debug_message(string(vel) + " < " + string(dd))
x += dcos(ang)*vel;
y -= dsin(ang)*vel;
//camera_set_view_pos(cam, round(x-camera_get_view_width(cam)/2), round(y-camera_get_view_height(cam)/2));
