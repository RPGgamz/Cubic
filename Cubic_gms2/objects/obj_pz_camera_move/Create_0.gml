/// @description initiate
//coordinates
x_start = obj_pz.x;
y_start = obj_pz.y;
x_end = x;
y_end = y;


//timing
transition_time = 30+round((distance_to_point(x_start, y_start)/8)^0.5-1); //a shot in the dark
step = 0;

//working variables
progress = 0;

