image_index++;
if (image_index >= image_number) image_index = 0;
alarm[0] = period;

if (image_index == 0) {
    x += 2*image_xscale;
    //forced/random turn
    if (!(position_meeting(x+2.5*image_xscale, y, obj_bug_zone_out) || position_meeting(x+2.5*image_xscale, y-1, obj_bug_zone_out)) || (random(100) < turnchance && position_meeting(x-4*image_xscale, y, obj_bug_zone_out) && position_meeting(x-4*image_xscale, y-1, obj_bug_zone_out))) {
        x -= image_xscale;
        image_xscale = -1*image_xscale;
    }
}



