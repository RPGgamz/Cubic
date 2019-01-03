/// @description disappear and allow player to move
if (sprite_index != -1) {
    sprite_index = -1;
    image_speed = 0;
    obj_control.state = scr_idle;
}

