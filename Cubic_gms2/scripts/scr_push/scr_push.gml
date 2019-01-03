/// @description scr_push(instance id)
/// @param instance id
//this is like stop_check for pushed objects


//with pusher blocks, do this
with (argument0) {
    move = obj_control.movespeed;
    
    //track step-number
    if (step == max_steps) {
        stop_check_done = true;
        exit;
    }
    
    //collide with solids
    while (scr_collide_with_solid() && move > 0) {
        move -= 1;
    }
    if (move != obj_control.movespeed) {
        scr_move_me();
        stop_check_done = true;
        step = max_steps;
        exit;
    }
    
    //collide with other pushers
    var col_p = instance_place(x+scr_dx(2), y+scr_dy(2), obj_pusher)
    if (instance_exists(col_p)) {
        //make sure it has done a stop check
        with (col_p) if (stop_check_done = false) scr_push(id);
        if (col_p.step == col_p.max_steps) {
            //be stopped by it, if it is not moving
            while (place_meeting(x+scr_dx(2), y+scr_dy(2), col_p) && move > 0) {
                move -= 1;
            }
            if (move != obj_control.movespeed) {
                scr_move_me();
                stop_check_done = true;
                step = max_steps;
                exit;
            }
        }
    }
    
    //collide with cubes
    var col_c = instance_place(x+scr_dx(2), y+scr_dy(2), obj_cube)
    if (instance_exists(col_c)) {
        //make sure it has done a stop check
        with (col_c) if (stop_check_done = false) stop = scr_stop_check(id);
        //be stopped by it, if it is not moving
        if (col_c.stop) {
            while (place_meeting(x+scr_dx(2), y+scr_dy(2), col_c) && move > 0) {
                move -= 1;
            }
            if (move != obj_control.movespeed) {
                scr_move_me();
                stop_check_done = true;
                step = max_steps;
                exit;
            }
        }
    }
    
    stop_check_done = true;
}

