/// @description draw the surfaces and green-ness

gpu_set_blendenable(false);
gpu_set_colorwriteenable(true,true,true,false)
draw_surface_stretched(surf_start, x1, y1, width, height);
draw_surface_stretched(surf_end, x2, y2, width, height);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true)


//green bar
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


//making "the old surface" green
draw_set_alpha(tran_alpha);

draw_rectangle(x1, y1, x1+width, y1+height, false);

draw_set_alpha(1);
draw_set_color(c_white);




