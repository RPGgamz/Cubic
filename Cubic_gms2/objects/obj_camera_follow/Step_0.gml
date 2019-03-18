/// @description follow
if (!instance_exists(player_cube)) {show_debug_message("camera_follow self destruct! :D"); instance_destroy(); exit;}

var dd = point_distance(x, y, player_cube.x, player_cube.y);
var ang = point_direction(x, y, player_cube.x, player_cube.y);
/*/snap the angle
if (ang mod 90 < 5) ang -= ang mod 90
else if (ang mod 90 > 85) ang += 90-(ang mod 90)//*/

if (dd > sqr(vel)/(2*a)) {
	vel += a;
} else {
	vel -= a;
	if (vel <= 1 && vel > dd) {
		vel = 0;
		x = player_cube.x;
		y = player_cube.y;
	}
}

x += dcos(ang)*vel;
y -= dsin(ang)*vel;
//camera_set_view_pos(cam, round(x-camera_get_view_width(cam)/2), round(y-camera_get_view_height(cam)/2));
