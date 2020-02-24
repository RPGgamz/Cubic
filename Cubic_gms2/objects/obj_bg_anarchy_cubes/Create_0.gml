


//settings
c_n = 50; //cube number
c_s = 6; //cube size
c_v = 1; //cube velocity (must divide into size)
rest_max = 10;

//variables
obj_pz.bg_color = make_color_rgb(22,32,41);
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);

g_w = (120 div c_s) - 1; //grid height -1
g_h = (108 div c_s) - 1; //grid width -1
g_t = c_s div c_v; //grid time

//local direction enum
right = 0;
up = 1;
left = 2;
down = 3;

//surf
surf = -1;
surf_scaler = 1;

//make start cubes

var i = c_n
while (--i != 0) {
	c_x[i] = c_s*irandom(g_w);
	c_y[i] = c_s*irandom(g_h);
	c_t[i] = g_t*irandom(rest_max);
	c_d[i] = irandom(3);
}


