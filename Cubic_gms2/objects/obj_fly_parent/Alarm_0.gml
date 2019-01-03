//bounds
if (!position_meeting(x+dx, y+dy, obj_bug_zone_out)) {
    if (!position_meeting(x+dx, y, obj_bug_zone_out)) dx = 0; dir = -dir;
    dy = 0;
}

//random turns
else if (random(100) < turnchance) dir = -dir;

//variance
if (random(100) < varrchance) step -= 1;

//next step
step++
if (step > stepsmax) step = 0;
alarm[0] = period;

//update coordinates
x += dx;
y += dy;
dx = 0;
dy = 0;

