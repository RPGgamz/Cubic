///@description initiate surf
if !surface_exists(surf_room) {
	surf_room = surface_create(room_width, room_height);
	view_set_surface_id(2, surf_room);
}

if !surface_exists(surf_treetop) {
	surf_treetop = surface_create(room_width*3, room_height*3);
	surface_set_target(surf_treetop);
	gpu_set_blendmode_ext(bm_one, bm_zero);
	draw_clear(c_green);
	draw_sprite(treetop_sprite, 0, room_width, room_height);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}