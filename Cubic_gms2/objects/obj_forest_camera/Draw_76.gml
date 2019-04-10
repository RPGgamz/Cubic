///@description initiate surfaces

event_inherited();

if !surface_exists(surf_treetop) {
	surf_treetop = surface_create(room_width*3, room_height*3);
	surface_set_target(surf_treetop);
	gpu_set_blendmode_ext(bm_one, bm_zero);
	if (treetop_color == -1) {draw_sprite_part(treetop_sprite, 0, 0, 0, 1, 1, 0, 0); treetop_color = surface_getpixel(surf_treetop, 0, 0);}
	draw_clear(treetop_color);
	draw_sprite(treetop_sprite, 0, room_width, room_height);
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
}