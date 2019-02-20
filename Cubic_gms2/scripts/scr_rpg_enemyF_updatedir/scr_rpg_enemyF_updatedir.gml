/// @description update dir
var player = obj_rpg_control.player;
var tilesize = 12 // Change the number if we change tilesize
var x_dist = round((player.x-x)/tilesize);
var y_dist = round((player.y-y)/tilesize);


if ((abs(x_dist)+abs(y_dist)) == 1) {
	image_index = 1;
	if (abs(x_dist) > abs(y_dist)) {
		show_debug_message("x")
		if (x_dist == 1) dir = "right";
		else dir = "left"
	} else {
		show_debug_message("y")
		if (y_dist == 1) dir = "down";
		else dir = "up"
	}
} else {
	image_index = 0;
	dir = "";
}
