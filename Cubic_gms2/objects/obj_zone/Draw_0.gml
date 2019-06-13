/// @description Draw Self

if (completed && !instance_exists(obj_pzclear_shine)) {
	instance_create(x,y,obj_pzclear_shine);
}

if (idle_ready_teleport = "idle") {
	depth = 2;
	draw_sprite(spr_pz_inner, image_index, x, y);
	if (completed) draw_sprite(spr_pzclear_outer, image_index, x, y);
	else draw_sprite(spr_pz_outer, image_index, x, y);
}
if (idle_ready_teleport = "ready") {
	depth = 0;
	if (completed) draw_sprite(spr_pzclear_ready, image_index, x, y);
	else draw_sprite(spr_pz_ready, image_index, x, y);
	
}
if (idle_ready_teleport = "teleport") {
	depth = 2;
	draw_sprite(spr_pz_teleport, image_index, x, y);
	
	var end_of_animation = sprite_get_number(spr_pz_teleport)-1;
	if (image_index >= end_of_animation) {
		visible = false;
		idle_ready_teleport = "idle";
	}
}
