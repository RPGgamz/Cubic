/// @description draw surf_room to the GUI layer, and draw treetop

draw_clear(c_red);

event_inherited();

if (!instance_exists(obj_forest_transition) && surface_exists(surf_treetop)) {
	var xl = -treetop_speed*(x - room_width/2) + bb - room_width;
	var yl = -treetop_speed*(y - room_height/2) - room_height;
	draw_surface(surf_treetop, xl, yl);
}

