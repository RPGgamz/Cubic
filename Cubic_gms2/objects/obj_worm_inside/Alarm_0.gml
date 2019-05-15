

if (x == tail_x && y == tail_y) {
    //extend. mb in new direction
    if (random(100) < turnchance) {
        dirx = choose(-1, 0, 0, 1);
        if (dirx == 0) diry = choose(-1, 1);
        else diry = 0;
    }
    //border
    if (!(position_meeting(x+dirx*1.5, y+diry*1.5, obj_bug_zone_in)) || position_meeting(x+dirx*1.5, y+diry*1.5, obj_cube)) {
        var options = ds_list_create();
        if (position_meeting(x+1.5, y, obj_bug_zone_in) && !position_meeting(x+1.5, y, obj_cube) && !position_meeting(x+1.5, y, obj_zone)) ds_list_add(options, "r");
        if (position_meeting(x-1.5, y, obj_bug_zone_in) && !position_meeting(x-1.5, y, obj_cube) && !position_meeting(x-1.5, y, obj_zone)) ds_list_add(options, "l");
        if (position_meeting(x, y+1.5, obj_bug_zone_in) && !position_meeting(x, y+1.5, obj_cube) && !position_meeting(x, y+1.5, obj_zone)) ds_list_add(options, "d");
        if (position_meeting(x, y-1.5, obj_bug_zone_in) && !position_meeting(x, y-1.5, obj_cube) && !position_meeting(x, y-1.5, obj_zone)) ds_list_add(options, "u");
        switch (ds_list_find_value(options, irandom(ds_list_size(options)-1))) {
            case "r":
                dirx = 1;
                diry = 0;
                break;
            case "l":
                dirx = -1;
                diry = 0;
                break;
            case "d":
                dirx = 0;
                diry = 1;
                break;
            case "u":
                dirx = 0;
                diry = -1;
                break;
        }
        ds_list_destroy(options);
    }
    
    x += dirx
    y += diry
} else {
    //contract
    tail_x = x;
    tail_y = y;
}

alarm[0] = period;

