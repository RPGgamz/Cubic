/// @description follow
if (!instance_exists(player_cube)) {show_debug_message("camera_follow self destruct! :D"); /*instance_destroy();*/ exit;}

var dx = player_cube.x-x;
var dy = player_cube.y-y;

if (abs(dx) > sqr(x_vel)/(2*a)) {
	x_vel += a*sign(dx);
} else {
	x_vel -= a*sign(dx);
	if (abs(x_vel) <= 1 && sign(dx+x_vel) != sign(dx)) x_vel = 0;
}

if (abs(dy) > sqr(y_vel)/(2*a)) {
	y_vel += a*sign(dy);
} else {
	y_vel -= a*sign(dy);
	if (abs(y_vel) <= 1 && sign(dy+y_vel) != sign(dy)) y_vel = 0;
}


x += x_vel;
y += y_vel;
camera_set_view_pos(cam, x-camera_get_view_width(cam)/2, y-camera_get_view_height(cam)/2);


   /* 
bb = (obj_display_manager.ideal_width-120)/2*obj_display_manager.view_zoom;
if (__view_get( e__VW.XView, 1 ) < -bb) __view_set( e__VW.XView, 1, -bb );
if (__view_get( e__VW.XView, 1 ) > room_width-120*obj_display_manager.view_zoom-bb) __view_set( e__VW.XView, 1, room_width-120*obj_display_manager.view_zoom-bb );
if (__view_get( e__VW.YView, 1 ) < 0) __view_set( e__VW.YView, 1, 0 );
if (__view_get( e__VW.YView, 1 ) > room_height-108*obj_display_manager.view_zoom) __view_set( e__VW.YView, 1, room_height-108*obj_display_manager.view_zoom );
