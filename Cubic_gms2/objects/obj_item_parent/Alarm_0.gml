/// @description hover

var height = -2; var upspeed = 0.05; var max_imgspd = 30/60;

y_vel = upspeed*sqrt(abs(height-y_offset))*sign(height-y_offset)
y_offset += y_vel;
	
image_speed = lerp(0,max_imgspd, y_offset/height)
hover_t++;

if (hover_t == 90 && instance_exists(obj_control)) event_user(0);
else alarm[0]++;