/// @description Draw Self
if (idle_ready_teleport = "idle") {
	depth = 2;
	draw_sprite(spr_pz_inner, image_index, x, y);
	draw_sprite(spr_pz_outer, image_index, x, y);
}
if (idle_ready_teleport = "ready") {
	depth = 0;
	draw_sprite(spr_pz_ready, image_index, x, y);
	
}
if (idle_ready_teleport = "teleport") {
	depth = 2;
	draw_sprite(spr_pz_teleport, image_index, x, y);
	
	var end_of_animation = 15-1;
	if (image_index >= end_of_animation) {
		visible = false;
		idle_ready_teleport = "idle";
	}
}