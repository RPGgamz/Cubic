/// @description draw surf_room to the GUI layer, and draw treetop


//if (instance_exists(obj_forest_transition)) exit;

draw_clear(c_red);

var tr_obj = obj_forest_transition;

if (surface_exists(surf_room)) {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(true,true,true,false);
    draw_surface(surf_room, w_screen+bb-x, h_screen-y);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
}
if (instance_exists(tr_obj) && surface_exists(tr_obj.surf_prev_room)) {
		gpu_set_blendenable(false);
	    gpu_set_colorwriteenable(true,true,true,false);
	    draw_surface(tr_obj.surf_prev_room, tr_obj.old_x0 + w_screen+bb-x, tr_obj.old_y0 + h_screen-y);
	    gpu_set_blendenable(true);
	    gpu_set_colorwriteenable(true,true,true,true);
}

if (instance_exists(tr_obj)) {
	var xl = lerp(0, -1.5, x - room_width/2) + bb;
	var yl = lerp(0, -1.5, y - room_height/2);
	draw_sprite(treetop_sprite, 0, xl, yl);
}
else if (surface_exists(surf_treetop)) {
	var xl = lerp(0, -1.5, x - room_width/2) + bb - room_width;
	var yl = lerp(0, -1.5, y - room_height/2) - room_height;
	draw_surface(surf_treetop, xl, yl);
}

if (instance_exists(tr_obj)) {
	if (surface_exists(tr_obj.surf_prev_room)) {
		gpu_set_blendenable(false);
	    gpu_set_colorwriteenable(true,true,true,false);
	    draw_surface(tr_obj.surf_prev_room, tr_obj.old_x0 + w_screen+bb-x, tr_obj.old_y0 + h_screen-y);
	    gpu_set_blendenable(true);
	    gpu_set_colorwriteenable(true,true,true,true);
	}
	var xl = lerp(0, -1.5, x - (tr_obj.old_x0 + room_width/2)) + bb;
	var yl = lerp(0, -1.5, y - (tr_obj.old_y0 + room_height/2));
	draw_sprite(tr_obj.sprite_prev_treetop, 0, xl, yl);
}

/*
surf_prev_room = obj_forest_camera.surf_room;
sprite_prev_treetop = obj_forest_camera.treetop_sprite;
prev_treetop_color = obj_forest_camera.treetop_color;