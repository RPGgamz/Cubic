/// @description move
x += (targ_x-x)*speed_pr_dist;
y += (targ_y-y)*speed_pr_dist;
show_debug_message("camstep " + string(targ_x) +" " + string(targ_y))