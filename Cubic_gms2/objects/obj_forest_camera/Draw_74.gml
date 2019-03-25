/// @description draw surf_room to the GUI layer, and draw treetop
draw_clear(c_red);

if (surface_exists(surf_room)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf_room, w_screen+bb-x, h_screen-y);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}

if (surface_exists(surf_treetop)) {
	var xl = lerp(1.5, 0, x - room_width/2) + bb - room_width;
	var yl = lerp(1.5, 0, y - room_height/2) - room_height;
	draw_surface(surf_treetop, xl, yl);
}