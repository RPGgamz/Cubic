

//variables
obj_pz.bg_color = make_color_rgb(42,28,36);
alarm[0] = 1;
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);

max_spd = 0.3;
spd_pr_dist = 1/500;
t_spd = 1/400;
change_chance = 1000; //prob is one in _ pr frame

var start_tt_spd = random(max_spd);
var start_tt_ang = random(2*pi);
tt_x = cos(start_tt_ang)*start_tt_spd;
tt_y = sin(start_tt_ang)*start_tt_spd;

t_x = 0;
t_y = 0;
x = 0;
y = 0;



//surf
surf = -1;
surf_scaler = 16;

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