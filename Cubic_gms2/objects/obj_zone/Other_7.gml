//disappear after exploding
/*
if (sprite_index == spr_zone_start) {
    visible = false;
}

//return to idle animation if player leaves
if (sprite_index == spr_zone_rdy) {
    var ww = sprite_width/2;
    if position_meeting(x+ww, y+ww, obj_cube) exit;
    if position_meeting(x-ww, y-ww, obj_cube) exit;
    sprite_index = spr_zone;
    //alpha = upper_limit;
    fade = true;
    alarm[0] = 1;
}

