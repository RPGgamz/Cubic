//turning
turnchance = 10;

//direction
dirx = choose(-1, 0, 0, 1);
if (dirx == 0) diry = choose(-1, 1);
else diry = 0;

//timing
period = irandom_range(30, 80);
alarm[0] = irandom_range(1, period);

//tail
tail_x = x;
tail_y = y;

