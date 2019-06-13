// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time

gml_pragma( "global", "__global_object_depths()");

// IMPORTANT: no depths outside range [-16000, 16000] will actually be rendered by GMS2
// depth of objects not assigned here defaults to 0
var __objectDepths = [];
var __objectNames = [];
var a = 0;
__objectDepths[a]  = -1;		/**/		__objectNames[a++] = "obj_wrong_color_stop";
__objectDepths[a]  = -2;		/**/		__objectNames[a++] = "obj_cube_wallhit";
__objectDepths[a]  = -2;		/**/		__objectNames[a++] = "obj_cube_combine";
__objectDepths[a]  = -2;		/**/		__objectNames[a++] = "obj_icebreak";
__objectDepths[a]  = 4;			/**/		__objectNames[a++] = "obj_forest_trail";
__objectDepths[a]  = -4;		/**/		__objectNames[a++] = "obj_sunlight";
__objectDepths[a]  = 3;			/**/		__objectNames[a++] = "obj_worm_outside";
__objectDepths[a]  = 3;			/**/		__objectNames[a++] = "obj_worm_inside";
__objectDepths[a]  = 3;			/**/		__objectNames[a++] = "obj_worm_arc";
__objectDepths[a]  = 3;			/**/		__objectNames[a++] = "obj_slug";
__objectDepths[a]  = -10000;	/**/		__objectNames[a++] = "obj_game_intro";
__objectDepths[a] = -10000;		/**/		__objectNames[a++] = "obj_fade";
__objectDepths[a] = -1000;		/**/		__objectNames[a++] = "obj_main_menu_1";
__objectDepths[a] = -10000;		/**/		__objectNames[a++] = "obj_teleport";
__objectDepths[a] = -2;			/**/		__objectNames[a++] = "obj_rpg_lock_v";
__objectDepths[a] = -2;			/**/		__objectNames[a++] = "obj_rpg_lock_h";
__objectDepths[a] = -2;			/**/		__objectNames[a++] = "obj_rpg_biglock_v";
__objectDepths[a] = -2;			/**/		__objectNames[a++] = "obj_rpg_biglock_h";
__objectDepths[a] = -2;			/**/		__objectNames[a++] = "obj_rpg_key";
__objectDepths[a] = -2;			/**/		__objectNames[a++] = "obj_rpg_coin";
__objectDepths[a] = 1;			/**/		__objectNames[a++] = "obj_cube";
__objectDepths[a] = 3;			/**/		__objectNames[a++] = "obj_pzclear_shine";

// create array used for associating id to depth
var len = array_length_1d(__objectDepths);
var final_len = 0;
var i = 0;
repeat(len) {
	final_len = max(final_len, asset_get_index( __objectNames[i] ));
	i++;
}

global.__objectID2Depth = array_create(final_len, undefined);
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( __objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = __objectDepths[i];
	}
}