

var bar = instance_create(random(120), 0, obj_bg_barcodebar);
bar.max_val = irandom(max_value-1)+1;
bar.width = irandom(max_width-1)+1;
bar.x -= bar.width/2
bar.vel = random_range(-max_speed, max_speed);
bar.fade_dir = 1;

bar.sense_range = random(max_sense_range);
bar.brake_power = random(max_brake_power);
bar.acc = random(max_acceleration)+1;