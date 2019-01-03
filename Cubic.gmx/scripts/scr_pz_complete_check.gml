///scr_pz_complete_check(obj_puzzle)

for (var j = 0; j < ds_list_size(obj_control.cubes); j++) 
    {
    var this_cube = ds_list_find_value(obj_control.cubes, j);
    if (abs(this_cube.x - argument0.x) + abs(this_cube.y - argument0.y) < obj_control.movespeed){ //no-diagonals-distance-check
        this_cube.x = argument0.x;
        this_cube.y = argument0.y;
        return(true);
    }
    
    //if (position_meeting(this_cube.x, this_cube.y, argument0)) 
    }

return(false);
