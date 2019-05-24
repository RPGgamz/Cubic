
if (instance_exists(obj_control)) {
	var i = 0;
	repeat(instance_number(obj_cube)) {
		var this_cube = instance_find(obj_cube, i);
		if (point_distance(this_cube.x, this_cube.y, x, y,) <= obj_control.movespeed) {
			obj_control.state = scr_nothing;
			this_cube.visible = false;
			fadingcube = instance_create(this_cube.x, this_cube.y, obj_fading_cube);
			fadingcube.dir = obj_control.slide_dir;
			fadingcube.spd = obj_control.movespeed;
			fadingcube.sprite_index = this_cube.sprite_index;
			fadingcube.image_index = this_cube.image_index;
			fadingcube.depth = this_cube.depth;
			this_cube.y = -100;
			
			alarm[0] = 3.5*60;
		}
		i++;
	}
}