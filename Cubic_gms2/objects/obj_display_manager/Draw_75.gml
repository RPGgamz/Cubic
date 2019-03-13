/// @description draw green bar (forest) and black bar

/*if (instance_exists(obj_forest_transition)) {
    with (obj_forest_transition) {
        draw_set_color(merge_color(col_1, col_2, tick));
        
        switch (transition_dir) {
            case "left":
                draw_rectangle(x1-gb, 0, x1, height, false);
            break;
            case "right":
                draw_rectangle(x2-gb, 0, x2, height, false);
            break;
            case "up":
                draw_rectangle(x1, y1-gb, width+bb, y1, false)
            break;
            case "down":
                draw_rectangle(x2, y2-gb, width+bb, y2, false)
            break;
        }
    }
}//*/

///draw black bars
draw_set_color(c_black);
var xx =(ideal_width-120)/2;
draw_rectangle(0, 0, xx-1, 108, false);
draw_rectangle(120+xx, 0, 120+2*xx, 108, false);

