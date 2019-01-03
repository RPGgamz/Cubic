/// @description update solved_pzs variable
//the timing determines when to change the minimap tile to solved
if instance_exists(obj_pz_camera_move){
    if (obj_pz_camera_move.progress >= 0.5) solved_pzs++;
    else alarm[1]++;
}

