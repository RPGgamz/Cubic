//camera transition
obj_control.state = scr_nothing;
current_puzzle = argument0;
var next_cam = pz[current_puzzle,0];
if (instance_exists(obj_pz_camera_move)) instance_destroy(obj_pz_camera_move);
instance_create(next_cam.x-view_wview[1]/2, next_cam.y-view_hview[1]/2, obj_pz_camera_move);
//puzzle reset
if (current_puzzle < solved_pzs+1) scr_puzzle_reset(next_cam);
