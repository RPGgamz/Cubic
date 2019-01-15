/// @description scr_puzzle_reset(camera_zone_id)
/// @param camera_zone_id
if (!instance_exists(obj_pz_camera_move)) obj_control.state = scr_idle;
var cam = argument0
with (cam)
    {
    var j = 0;
	
    repeat (array_height_2d(cubes))
        {
        if (instance_exists(cubes[j,4])) instance_destroy(cubes[j,4]);
		show_debug_message (cubes[j,2])
		if (cubes[j,2] >= 0) //lvl
			{
	        if (cubes[j,3]) //frozen
	            {
	            switch (cubes[j,2]) //lvl
	                {
	                case 1:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_frozen_1);
	                    break;
	                case 2:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_frozen_2);
	                    break;
	                case 3:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_frozen_3);
	                    break;
	                case 4:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_frozen_4);
	                    break;
	                }
	            }
	        else
	            {
	            switch (cubes[j,2]) //lvl
	                {
	                case 0:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_cube_0);
	                    break;
	                case 1:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_cube_1);
	                    break;
	                case 2:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_cube_2);
	                    break;
	                case 3:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_cube_3);
	                    break;
	                case 4:
	                    cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_cube_4);
	                    break;
	                }
	            }
			}
		else cubes[j,4] = instance_create(cubes[j,0], cubes[j,1], obj_pusher);
		
        j++;
        }
    
    
    }
