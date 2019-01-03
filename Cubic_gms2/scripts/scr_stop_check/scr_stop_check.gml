/// @description scr_stop_check(obj)
/// @param obj
with (argument0) {
    //collide with solid
    while (scr_collide_with_solid() && move > 0) {
        /*/wallhit animation
        if (wallhit_an == noone) {
            wallhit_an = instance_create(x, y, obj_cube_wallhit)
            wallhit_an.parent = id;
            switch (obj_control.slide_dir)
                {
                case "right":
                    wallhit_an.image_angle = 0;
                    break;
                case "up":
                    wallhit_an.image_angle = 90;
                    break;
                case "left":
                    wallhit_an.image_angle = 180;
                    break;
                case "down":
                    wallhit_an.image_angle = 270;
                    break;
                }
        }*/
        move -= 1;
    }
    if (move != obj_control.movespeed) {
        scr_move_me();
        stop_check_done = true;
        return(true);
    }
    
    //collide with other blocks
    var other_cube = instance_place(x+scr_dx(2), y+scr_dy(2), obj_cube);
    //if there is another block
    if (instance_exists(other_cube)) {
        //make sure it has done a stop check
        with (other_cube) if (stop_check_done = false) stop = scr_stop_check(id);
        
        //if it is not moving
        if (other_cube.stop) {
            //if i can't pass through it
            if (other_cube.lvl != lvl or other_cube.combine_lock or lvl = 0) {
                //move up behind it
                while (place_meeting(x+scr_dx(2), y+scr_dy(2), other_cube) && move > 0) {
                    move -= 1;
                }
                if (move != obj_control.movespeed) {
                    scr_move_me();
                    stop_check_done = true;
                    return(true);
                }
            //but if i can pass through it
            } else {
                //draw it over me
                other_cube.depth = -1
                //play the combine animation
                if (other_cube.combine_an == noone) with (other_cube) {
                    combine_an = instance_create(other_cube.x, other_cube.y, obj_cube_combine);
                    combine_an.parent = id;
                }
                //if it is frozen, play the icebreak animation
                if (other_cube.sprite_index == spr_frozen && other_cube.frozen) {
                    with (other_cube){
                        sprite_index = spr_cube;
                        image_index = lvl;
                    }
                    instance_create(other_cube.x, other_cube.y, obj_icebreak);
                }
            }
        }
    }
    
    //collide with pushers
    var pusher = instance_place(x+scr_dx(2), y+scr_dy(2), obj_pusher);
    if (instance_exists(pusher)) {
        with (pusher) if (stop_check_done = false) scr_push(id);
        if (pusher.step == pusher.max_steps) {
            while (place_meeting(x+scr_dx(2), y+scr_dy(2), pusher) && move > 0) {
                move -= 1;
            }
            if (move != obj_control.movespeed) {
                scr_move_me();
                stop_check_done = true;
                return(true);
            }
        }
    }
    
    //the code reached this line, so we didnt collide with anything
    stop_check_done = true;
    return (false);
}


















