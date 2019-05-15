image_index++;
if (image_index >= image_number) image_index = 0;
alarm[0] = period;

switch(image_index) {
    case 2:
    case 3:
        x += image_xscale;
        break;
    case 0:
        //forced and random turn
        if (
                !(
            position_meeting(x+2.5*image_xscale, y, obj_bug_zone_in)
            &&
            position_meeting(x+2.5*image_xscale, y-1, obj_bug_zone_in)
                ) 
            ||
            position_meeting(x+2.5*image_xscale, y, obj_cube)
            ||
            position_meeting(x+2.5*image_xscale, y-1, obj_cube)
            ||
            position_meeting(x+2.5*image_xscale, y, obj_zone)
            ||
            position_meeting(x+2.5*image_xscale, y-1, obj_zone)
            ||
                (
            random(100) < turnchance 
            &&
            position_meeting(x-4*image_xscale, y, obj_bug_zone_out)
            &&
            position_meeting(x-4*image_xscale, y-1, obj_bug_zone_out)
            &&
            !position_meeting(x-4*image_xscale, y, obj_cube)
            &&
            !position_meeting(x-4*image_xscale, y-1, obj_cube)
            &&
            !position_meeting(x-4*image_xscale, y, obj_zone)
            &&
            !position_meeting(x-4*image_xscale, y-1, obj_zone)
                )
            
        ){
            
            image_xscale = -1*image_xscale;
        }
}



