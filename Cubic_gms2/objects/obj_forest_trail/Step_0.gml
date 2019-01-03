/// @description update the timer

//tick down
x=0;
repeat(room_width) {
    y=0;
    repeat(room_height) {
        if (timer[x,y] > 0) timer[x,y] -= 1;
        y++;
    }
    x++;
}

//set timer under the cube
if (obj_control.state = scr_move) {
    var w = sprite_get_width(spr_cube);
    var h = sprite_get_height(spr_cube);
    x = obj_cube.x - 5;
    var y_min = obj_cube.y - 5; //used like x. The loop just needs 2 y variables, so here we use this one
    
    var pixelnr = 1;
    var rng_treshold, dist;
    var a = -abs(hardness_edge - hardness_center) + abs(hardness_edge - hardness_center)*(hardness_trans + 1);
    //(adjust size and topleft corner, if x or y <0)
    switch (obj_control.slide_dir) {
        case "left":
            x += w;
            w = obj_control.movespeed;
            break;
        case "right":
            x -= obj_control.movespeed
            w = obj_control.movespeed;
            break;
        case "up":
            y_min += h;
            h = obj_control.movespeed;
            break;
        case "down":
            y_min -= obj_control.movespeed
            h = obj_control.movespeed;
            break;
    }
    if (x < 0) {
        w = w+x
        if (w < 0) w = 0;
        x = 0;
    }
    if (y_min < 0) {
        h = h+y_min
        if (h < 0) h = 0;
        y_min = 0;
    }
    //(the loop)
    repeat(w) {
        y = y_min;
        repeat(h) {
            dist = scr_forest_trail_dist(w, h, pixelnr);
            rng_threshold = ((dist-1)*a + hardness_edge - hardness_center)*dist + hardness_center; //factored version of what's in geogebra
            /*if (random(1) < rng_threshold)*/ timer[x,y] = trail_duration + trail_fade_duration;
            y++;
            pixelnr++;
        }
        x++;
    }
}

/* */
/*  */
