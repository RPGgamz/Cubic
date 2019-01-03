/// @description go to the next puzzle
if (solved_pzs == -1) current_puzzle = 0;
else current_puzzle = solved_pzs;
var cam = pz[current_puzzle,0];
__view_set( e__VW.XView, 1, cam.x - __view_get( e__VW.WView, 1 )/2 );
__view_set( e__VW.YView, 1, cam.y - __view_get( e__VW.HView, 1 )/2 );

