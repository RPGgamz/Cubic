/// @description pz-complete-pause

//afterwards, go to the next puzzle
if (current_puzzle == solved_pzs) {
    scr_pz_goto(solved_pzs+1);
    alarm[1]=1;
}

