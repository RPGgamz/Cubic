

//variables
obj_pz.bg_color = make_color_rgb(42,28,36);
alarm[0] = 1;
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);

x_vel = 0.5;
y_vel = 0.5;

//surf
surf = -1;

//create first diamonds
var start_xoffset = -irandom(33);
var start_yoffset = -irandom(33);

var xx = 0;
repeat(5) {
	var yy = 0;
	repeat(5) {
		instance_create(start_xoffset + xx*34, start_yoffset + yy*34, obj_bg_diamond);
		yy++;
	}
	xx++;
}