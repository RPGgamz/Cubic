
with (obj_bg_diamond) {
	x += other.x_vel;
	y += other.y_vel;
	
	if (x > 137 || y > 137 || x < -33 || y < -33) {
		repeat(1) { //lol
			if (x > 137) {
				instance_create(x-170, y, obj_bg_diamond);
				break;
			}
			if (y > 137) {
				instance_create(x, y-170, obj_bg_diamond);
				break;
			}
			if (x < -33) {
				instance_create(x+170, y, obj_bg_diamond);
				break;
			}
			if (y < -33) {
				instance_create(x, y+170, obj_bg_diamond);
				break;
			}
		}
		instance_destroy();
	}
}