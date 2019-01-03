/*
if (tick = 0) {
//COLORS!!!!!
    if (room == rm_green_forest_1c or room == rm_green_forest_2c) {
        col_1 = c_medium_forest;
    } else if (room == rm_green_forest_3c or room == rm_green_forest_4c or room == rm_green_forest_4ca or room == rm_green_forest_5c or room == rm_green_forest_6c) {
        col_1 = c_deep_forest;
    } else {
        col_1 = c_light_forest;
    }
    if (next_room == rm_green_forest_1c or next_room == rm_green_forest_2c) {
        col_2 = c_medium_forest;
    } else if (next_room == rm_green_forest_3c or next_room == rm_green_forest_4c or next_room == rm_green_forest_4ca or next_room == rm_green_forest_5c or next_room == rm_green_forest_6c) {
        col_2 = c_deep_forest;
    } else if (next_room != rm_green_forest_1c or next_room != rm_green_forest_2c or next_room != rm_green_forest_4c or next_room != rm_green_forest_4ca or next_room != rm_green_forest_5c or next_room != rm_green_forest_6c) {
        col_2 = c_light_forest;
    }
    show_debug_message("next room: " + string(next_room));
}
*/
if (tick < 1) {
    tick_rate += 0.029;
    tick += power(tick_rate, 3);
    if (tick >= 1) {
        tick = 1;
    } else {
        alarm[0]++;
    }
}

/* */
/*  */
