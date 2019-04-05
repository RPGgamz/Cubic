/// @description draw previous room and treetops

if (room == next_room) {
	var camguy = instance_find(obj_forest_camera,0);
	var treespeed = camguy.treetop_speed;
	
	// draw prev room
	if (surface_exists(surf_prev_room)) {
		gpu_set_blendenable(false);
		gpu_set_colorwriteenable(true,true,true,false);
		draw_surface(surf_prev_room, old_x0 + camguy.w_screen+bb-camguy.x, old_y0 + camguy.h_screen-camguy.y);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true);
	}
	
	//create treetops surface (we make it 3/2 normal width/heigt (the smallest) so there is an edge for when cam is off centre)
	if !(surface_exists(surf_treetops)) {
		if (transition_dir == "left" || transition_dir == "right") {
			dpos = height*3/4 - sprite_get_height(camguy.treetop_sprite)/2;
			surf_treetops = surface_create((width*2+gb)*treespeed, height*3/2);
			
		} else if (transition_dir == "up" || transition_dir == "down") {
			dpos = width*3/4 - sprite_get_width(camguy.treetop_sprite)/2;
			surf_treetops = surface_create(width*3/2, (room_height*2+gb)*treespeed);
		}
	}
	
	//draw to treetops surface
	surface_set_target(surf_treetops);
	gpu_set_blendmode_ext(bm_one, bm_zero);
	draw_clear(c_white);
	var c_1 = merge_color(prev_treetop_color, camguy.treetop_color, clamp(2*progress-1,0,1));
	var c_2 = merge_color(prev_treetop_color, camguy.treetop_color, clamp(2*progress,0,1));
	switch(transition_dir) {
		case "left":
			draw_set_color(camguy.treetop_color); draw_rectangle(0, 0, width, height*3/2, false);
			draw_set_color(prev_treetop_color); draw_rectangle((width+gb)*treespeed, 0, surface_get_width(surf_treetops), height*3/2, false);
			draw_rectangle_color(width, 0, (width+gb)*treespeed, height*3/2, c_2, c_1, c_1, c_2, false);
			draw_set_color(c_white);
			
			draw_sprite(camguy.treetop_sprite, 0, 0, dpos);
			draw_sprite(sprite_prev_treetop, 0, (width+gb)*treespeed, dpos);
			break;
			
	    case "right":
			draw_set_color(prev_treetop_color); draw_rectangle(0, 0, width, height*3/2, false);
			draw_set_color(camguy.treetop_color); draw_rectangle((width+gb)*treespeed, 0, surface_get_width(surf_treetops), height*3/2, false);
			draw_rectangle_color(width, 0, (width+gb)*treespeed, height*3/2, c_1, c_2, c_2, c_1, false);
			draw_set_color(c_white);
			
			draw_sprite(sprite_prev_treetop, 0, 0, dpos);
			draw_sprite(camguy.treetop_sprite, 0, (width+gb)*treespeed, dpos);
			break;
			
	    case "up":
			draw_set_color(camguy.treetop_color); draw_rectangle(0, 0, width*3/2, height, false);
			draw_set_color(prev_treetop_color); draw_rectangle(0, (height+gb)*treespeed, width*3/2, surface_get_height(surf_treetops), false);
			draw_rectangle_color(0, height, width*3/2, (height+gb)*treespeed, c_2, c_2, c_1, c_1, false);
			draw_set_color(c_white);
			
			draw_sprite(camguy.treetop_sprite, 0, dpos, 0);
			draw_sprite(sprite_prev_treetop, 0, dpos, (height+gb)*treespeed);
			break;
			
	    case "down":
			draw_set_color(prev_treetop_color); draw_rectangle(0, 0, width*3/2, height, false);
			draw_set_color(camguy.treetop_color); draw_rectangle(0, (height+gb)*treespeed, width*3/2, surface_get_height(surf_treetops), false);
			draw_rectangle_color(0, height, width*3/2, (height+gb)*treespeed, c_1, c_1, c_2, c_2, false);
			draw_set_color(c_white);
			
			draw_sprite(sprite_prev_treetop, 0, dpos, 0);
			draw_sprite(camguy.treetop_sprite, 0, dpos, (height+gb)*treespeed);
			break;
	}
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	
	//draw treetops surface to GUI
	switch(transition_dir) {
		case "left":
	    case "up":
			var xl = -treespeed*(camguy.x - room_width/2) + bb;
			var yl = -treespeed*(camguy.y - room_height/2);
			break;
	    case "right":
	    case "down":
			var xl = -treespeed*(camguy.x - (old_x0 + room_width/2)) + bb;
			var yl = -treespeed*(camguy.y - (old_y0 + room_height/2));
			break;
	}
	switch(transition_dir) {
		case "left":
	    case "right":
			yl -= dpos;
			break;
	    case "up":
	    case "down":
			xl -= dpos;
			break;
	}
	draw_surface(surf_treetops, xl, yl);
	
	//draw_text(bb+10,10, progress)
	
}