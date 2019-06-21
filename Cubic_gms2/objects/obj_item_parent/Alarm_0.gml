/// @description hover

var height = -2; var upspeed = 0.05; var max_imgspd = 30/60;

y_vel = upspeed*sqrt(abs(height-y_offset))*sign(height-y_offset)
y_offset += y_vel;
	
image_speed = lerp(max_imgspd, 0, hover_t/90)
hover_t++;

if (hover_t == 60*4 && instance_exists(obj_control)) event_user(0);
else alarm[0]++;