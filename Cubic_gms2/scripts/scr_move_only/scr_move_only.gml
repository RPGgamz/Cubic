/// @description scr_move_only(cube)
/// @param cube
scr_start_move();
for (var i = 0; i < ds_list_size(cubes); i++) {
    this_cube = ds_list_find_value(cubes, i);
    if (this_cube = argument0) continue;
    with (this_cube) {
        move = -move;
        scr_move_me();
        stop = true;
        combine_lock = false;
        stop_check_done = true;
    }
}
