/// @description draw surf_room to the GUI layer, and draw treetop

//if (instance_exists(obj_forest_transition)) exit;

draw_clear(c_red);

if (surface_exists(surf_room)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf_room, w_screen+bb-x, h_screen-y);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}

if (!instance_exists(obj_forest_transition) && surface_exists(surf_treetop)) {
	var xl = -treetop_speed*(x - room_width/2) + bb - room_width;
	var yl = -treetop_speed*(y - room_height/2) - room_height;
	draw_surface(surf_treetop, xl, yl);
}

