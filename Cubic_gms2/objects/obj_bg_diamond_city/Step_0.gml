
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
/*
var dacc = random_range(-max_dacc, max_dacc);
var angle = random(2*pi);

x_acc += cos(angle)*dacc
y_acc += sin(angle)*dacc
x_vel += x_acc;
y_vel += y_acc;

var vel = sqrt(sqr(x_vel)+sqr(y_vel));
if (random(1000) < 1) {
	show_debug_message("---------------------------")
	show_debug_message(string(x_acc) + ", " + string(y_acc))
	x_acc = -x_vel*random(inv_acc);
	y_acc = -y_vel*randominv_acc;
	show_debug_message(string(x_acc) + ", " + string(y_acc))
	/*angle = arccos(x_vel/vel);
	x_vel = cos(angle)*max_vel;
	y_vel = -sin(angle)*max_vel;
	x_acc = 0;
	y_acc = 0;*/
}
