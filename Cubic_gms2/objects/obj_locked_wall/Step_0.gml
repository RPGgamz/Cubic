/// @description make particles

if (random(1) <= no_particle_frames/160) {
	no_particle_frames = -2;
	if (object_index == obj_locked_wall_h) {
		px = irandom_range(-5, 4);
		py = irandom_range(-2, 1);
	} else {
		px = irandom_range(-2, 1);
		py = irandom_range(-5, 4);
	}
	instance_create(x+px, y+py, obj_zone_particle)
} else {
	no_particle_frames++
}