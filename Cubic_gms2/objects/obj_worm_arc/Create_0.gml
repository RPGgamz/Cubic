//direction
image_xscale = choose(-1, 1);

//turning
turnchance = 10;

//timing
image_speed = 0;
period = 25;
alarm[0] = irandom_range(1, period);
image_index = irandom(image_number-1)

//duck down
if (!position_meeting(x, y-1, obj_bug_zone_out)) y++;

//forced turn
if (!(position_meeting(x+2.5*image_xscale, y, obj_bug_zone_out) || position_meeting(x+2.5*image_xscale, y-1, obj_bug_zone_out))){
    x -= image_xscale;
    image_xscale = -1*image_xscale;
}

