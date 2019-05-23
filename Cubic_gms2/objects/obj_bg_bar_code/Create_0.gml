

//variables
obj_pz.bg_color = make_color_rgb(22,32,41);
bg_hue = color_get_hue(obj_pz.bg_color);
bg_sat = color_get_saturation(obj_pz.bg_color);
bg_val = color_get_value(obj_pz.bg_color);
alarm[0] = 1;

//settings
max_width = 8;
max_value = 25;
spawn_chance = 1000;
die_chance = 12000;
max_speed = 1/60;
fade_speed = 5/60

//surf
surf = -1;
surf_scaler = 16;

//make start bars
repeat(round(die_chance/spawn_chance)) event_user(0);

