/// @description update dir
var tilesize = 12 // Change the number if we change tilesize
var x_dist = round(p_x-x)/tilesize;
var y_dist = round(p_y-y)/tilesize;



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