/// @description returns whether there'd be a collision with a solid, if calling instance were to move by scr_move_me
var temp_blocked = false
var blocker = instance_place(x+scr_dx(0), y+scr_dy(0), obj_solid);
if (instance_exists(blocker)) {
    if (blocker.lvl != lvl) {
        scr_wrong_color_stop(blocker, id);
        temp_blocked = true;
    } else {
        blocker.x += 1000;
        var blocker2 = instance_place(x+scr_dx(0), y+scr_dy(0), obj_solid);
        if (instance_exists(blocker2)) {
            if (blocker2.lvl != lvl) {
                scr_wrong_color_stop(blocker2, id);
                temp_blocked = true;
            } else {
                blocker2.x += 1000;
                var blocker3 = instance_place(x+scr_dx(0), y+scr_dy(0), obj_solid);
                if (instance_exists(blocker3)) {
                    if (blocker3.lvl != lvl) {
                        scr_wrong_color_stop(blocker3, id);
                        temp_blocked = true;
                    }
                }
                blocker2.x -= 1000;
            }
        }
        blocker.x -= 1000;
    }
}
return(temp_blocked);

