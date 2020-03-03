


//settings
c_n = 50; //cube number
c_s = 6; //cube size
c_v = 1; //cube velocity (must divide into size)
											//Victor: Optim: initialize c_t[] og c_d[] ved at skrive c_t[c_n] = 0; c_d[c_n] = 0;
rest_max = 2*60; //times c_s/c_v
surf_scaler = 1;
anarchy = 0;

//variables
obj_pz.bg_color = make_color_rgb(22,32,41);
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);

g_w = (120 div c_s) - 1; //grid height -1	//Victor: Er det ikke width?
g_h = (108 div c_s) - 1; //grid width -1	//		  Er det ikke height?
g_t = c_s div c_v; //grid time

g_tt = 0;
surf = -1;

//local direction enum
right = 0;
up = 1;
left = 2;
down = 3;

//make start cubes

var i = c_n
while (i-- > 0) {
	c_x[i] = c_s*irandom(g_w);
	c_y[i] = c_s*irandom(g_h);
	
	var j = c_n
	while (j != i) {
		while (--j > i) {
			if (point_in_rectangle(c_x[i], c_y[i], c_x[j]-c_s+1, c_y[j]-c_s+1, c_x[j]+c_s-1, c_y[j]+c_s-1)) {
				j = c_n;
				c_x[i] = c_s*irandom(g_w);
				c_y[i] = c_s*irandom(g_h);
				break;
			}
		}
	}
	
	c_t[i] = g_t*irandom(rest_max) + irandom(anarchy*g_t);
	c_d[i] = irandom(3);
}


