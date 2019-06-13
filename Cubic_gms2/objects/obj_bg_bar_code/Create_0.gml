

//variables
obj_pz.bg_color = make_color_rgb(22,32,41);
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);
alarm[0] = 1;

//settings
max_width = 8;
max_value = 25;
spawn_chance = 500; //one in x spawn pr frame
die_chance = 6000; //one in x chance for each bar pr frame
max_speed = 16/60;
fade_speed = 5/60;
max_sense_range = 40;
max_brake_power = 0.04;
max_acceleration = 0.01;

//surf
surf = -1;
surf_scaler = 16;

//make start bars
repeat(round(die_chance/spawn_chance)) event_user(0);

