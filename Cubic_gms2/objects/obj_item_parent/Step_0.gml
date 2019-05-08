
if (instance_exists(obj_control)) {
    if (keyboard_check_pressed(vk_space) && obj_cube.x == x && obj_cube.y == y && sprite_index != -1 && obj_control.state = scr_idle) event_user(0);
}

//hover
var height = 2; var upspeed = 0.05; var grav = 0.05;
if (abs(obj_cube.x-x) < 12 && abs(obj_cube.y-y) < 12) {
	y_vel = upspeed*sqrt(abs(-height-y_offset))*sign(-height-y_offset)
} else y_vel += grav;
y_offset += y_vel;
if (y_offset > 0) {y_offset = 0; y_vel = 0;}

