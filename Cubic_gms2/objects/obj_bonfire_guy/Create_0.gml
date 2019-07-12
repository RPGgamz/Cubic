
idle_time_max = 60*20;
idle_time_min1 = 60*7; //minimum time folded arms
idle_time_min0 = 60*3; //minimum time stretched arms
image_time = 13;

time = 0;
image_speed = 0;
image_index = choose(0,image_number-1);

if (image_index == 0) di = 1;
else di = -1;

if (image_index == 0) alarm[0] = irandom_range(idle_time_min0, idle_time_max);
else alarm[0] = irandom_range(idle_time_min1, idle_time_max);

