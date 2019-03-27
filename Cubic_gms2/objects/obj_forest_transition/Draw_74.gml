/// @description draw the surfaces and green-ness

surface_set_target(surf_end);
with (obj_forest_camera) {
	var zoom_var = other.zoomvar;
	draw_clear(c_red);
		
	if (surface_exists(surf_room)) {
		gpu_set_blendenable(false);
		gpu_set_colorwriteenable(true,true,true,false);
		draw_surface_stretched(surf_room, zoom_var*(w_screen-x), zoom_var*(h_screen-y), zoom_var*surface_get_width(surf_room), zoom_var*surface_get_height(surf_room));
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true);
	}
		
	if (surface_exists(surf_treetop)) {
		var xl = zoom_var*(lerp(1.5, 0, x - room_width/2)- room_width);
		var yl = zoom_var*(lerp(1.5, 0, y - room_height/2) - room_height);
		draw_surface_stretched(surf_treetop, xl, yl, zoom_var*surface_get_width(surf_treetop), zoom_var*surface_get_height(surf_treetop));
	}
}
surface_reset_target();



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




