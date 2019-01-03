event_inherited();

unlock_spd = 1/5;

//attempt to guess the direction
if (sprite_index == spr_wall_locked_v) {
    if (x < room_width/2) dir = "left";
    else dir = "right";
} else {
    if (y < room_height/2) dir = "up";
    else dir = "down";
}

//Custom set this in creation code. This may be necessary if the door is closest to the wrong edge of the screen.

