

//variables
obj_pz.bg_color = make_color_rgb(38,50,34);
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);
square_lifetime = 60*20;
max_value = 10;
square_birth_chance = 400; //actual spawn prob is inverse of this number
center_birth_concentration = 1.5; //positive reduces cubes away from center, negative increaces them. 
alarm[0] = 1;



//surf
surf = -1;

//arrays
var xx = 0;
repeat(10) {
	var yy = 0;
	repeat(9) {
		square_vals[xx,yy] = 0;
		square_time[xx,yy] = -1;
		yy++;
	}
	xx++;
}
