/// @description initiate

//settings (axel settings er duration=60 fade_duration=10)
trail_duration = 10;
trail_fade_duration = 60; //kommer efter trail_duration
trail_alpha = 0.10;
//settings til noget underligt noget som jeg næsten har slået fra
hardness_center = 1; //0 to 1. 0 is no trail pixels, 1 is all pixels are trail.
hardness_edge = 0.2;
hardness_trans = -1; //-1 to 1. if center is harder than edge: -1 would mean, going from center to edge, veryfast aproaching edge hardness at first, then slowly. 1 would mean, going from center to edge, slowly aproaching edge hardness at first, then fast.

//the array
x=room_width;
repeat(room_width) {
    x--;
    y=room_height;
    repeat(room_height) {
        y--;
        timer[x,y] = 0;
    }
}

//the surface
surf = surface_create(room_width, room_height);

