/// @description update dir
var player = obj_rpg_control.player;
if ( obj_rpg_control.state = obj_rpg_control.idle ) {
	
	show_debug_message(string(player.step) + " " + string(player.max_steps));
	var tilesize = 12 // Change the number if we change tilesize
	var x_dist = round((player.x-x)/tilesize);
	var y_dist = round((player.y-y)/tilesize);
	show_debug_message(string(x_dist) + " " + string(y_dist));
	if ((abs(x_dist)+abs(y_dist)) == 1) { 
		show_debug_message("x_dist = " + string(x_dist))
		show_debug_message("y_dist = " + string(y_dist))
		if (abs(x_dist) > abs(y_dist)) {
			show_debug_message("x")
			if (x_dist == 1) dir = "right";
			else dir = "left"
		} else {
			show_debug_message("y")
			if (y_dist == 1) dir = "down";
			else dir = "up"
		}
		image_index = 1;
	} else {
		dir = "";
		image_index = 0;
	}
	
} else {
	alarm [1] = 1;
	
}