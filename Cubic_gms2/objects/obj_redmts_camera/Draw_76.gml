///@description initiate surface
if !surface_exists(surf_room) {
	surf_room = surface_create(room_width, room_height);
	view_set_surface_id(2, surf_room);
}
surface_set_target(surf_room);
draw_clear_alpha(c_white, 0);
surface_reset_target();