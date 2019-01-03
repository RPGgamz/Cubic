/// @description draw the surfaces
if (room != next_room) room_goto(next_room);

gpu_set_blendenable(false);
gpu_set_colorwriteenable(true,true,true,false)
draw_surface_stretched(surf_start, x1, y1, width, height);
draw_surface_stretched(surf_end, x2, y2, width, height);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true)


//making "the old surface" green
draw_set_alpha(tran_alpha);

draw_set_color(merge_color(col_1, col_2, tick));

draw_rectangle(x1, y1, x1+width, y1+height, false);

draw_set_alpha(1);
draw_set_color(c_white);




