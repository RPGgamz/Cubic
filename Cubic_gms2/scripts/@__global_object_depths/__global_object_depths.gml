// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time

gml_pragma( "global", "__global_object_depths()");

// IMPORTANT: no depths outside range [-16000, 16000] will actually be rendered by GMS2
// depth of objects not assigned here defaults to 0
var __objectDepths = [];
var __objectNames = [];
__objectDepths[0]  =	 -1;	/**/	__objectNames[0] = "obj_wrong_color_stop";
__objectDepths[1]  =	 -2;	/**/	__objectNames[1] = "obj_cube_wallhit";
__objectDepths[2]  =	 -2;	/**/	__objectNames[2] = "obj_cube_combine";
__objectDepths[3]  =	 -2;	/**/	__objectNames[3] = "obj_icebreak";
__objectDepths[4]  =	  3;	/**/	__objectNames[4] = "obj_forest_trail";
__objectDepths[5]  =   -300;	/**/	__objectNames[5] = "obj_sunlight";
__objectDepths[6]  =	  2;	/**/	__objectNames[6] = "obj_worm_outside";
__objectDepths[7]  =      2;	/**/	__objectNames[7] = "obj_slug";
__objectDepths[8]  =      2;	/**/	__objectNames[8] = "obj_worm_inside";
__objectDepths[9]  = -10000;	/**/	__objectNames[9] = "obj_game_intro";
__objectDepths[10] = -10000;	/**/	__objectNames[10] = "obj_fade";
__objectDepths[11] =  -1000;	/**/	__objectNames[11] = "obj_main_menu_1";
__objectDepths[12] = -10000;	/**/	__objectNames[12] = "obj_teleport";
__objectDepths[13] =  -2;	/**/	__objectNames[13] = "obj_rpg_lock_v";
__objectDepths[14] = -2;	/**/	__objectNames[14] = "obj_rpg_lock_h";
__objectDepths[13] =  -2;	/**/	__objectNames[15] = "obj_rpg_biglock_v";
__objectDepths[14] = -2;	/**/	__objectNames[16] = "obj_rpg_biglock_h";
__objectDepths[13] =  -2;	/**/	__objectNames[17] = "obj_rpg_key";
__objectDepths[14] = -2;	/**/	__objectNames[18] = "obj_rpg_coin";

// create array used for associating id to depth
var len = array_length_1d(__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( __objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = __objectDepths[i];
	}
}