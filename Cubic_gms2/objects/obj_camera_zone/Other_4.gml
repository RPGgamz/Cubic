/// @description list cubes
var j = 0;
for (var i = 0; i < instance_number(obj_cube); i++)
    {
    var this_cube = instance_find(obj_cube, i);
    if (position_meeting(this_cube.x, this_cube.y, id))
        {
        cubes[j,0] = this_cube.x;
        cubes[j,1] = this_cube.y;
        cubes[j,2] = this_cube.lvl;
        cubes[j,3] = this_cube.frozen;
        cubes[j,4] = this_cube.id;
        j++
        }
    }
for (var i = 0; i < instance_number(obj_pusher); i++)
    {
    var this_pusher = instance_find(obj_pusher, i);
    if (position_meeting(this_pusher.x, this_pusher.y, id))
        {
        cubes[j,0] = this_pusher.x;
        cubes[j,1] = this_pusher.y;
        cubes[j,2] = -2;
        //cubes[j,3] = false;
        cubes[j,4] = this_pusher.id;
        j++
        }
    }

