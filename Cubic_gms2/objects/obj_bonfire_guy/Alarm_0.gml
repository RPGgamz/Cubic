/// @description animate

image_index += di;

if (image_index == 0 || image_index == image_number-1) {
	if (image_index == 0) alarm[0] = irandom_range(idle_time_min0, idle_time_max);
	else alarm[0] = irandom_range(idle_time_min1, idle_time_max);
	di = -di;
}
else alarm[0] += image_time;