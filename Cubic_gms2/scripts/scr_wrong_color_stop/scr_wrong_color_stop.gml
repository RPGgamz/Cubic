/// @description scr_wrong_color_stop(blocker, cube)
/// @param blocker
/// @param  cube
with (argument0)
    {
    if (lvl != -1 && object_get_parent(object_index) == obj_trash && object_get_parent(argument1.object_index) == obj_cube)
        {
        var wcs = instance_create(x, y, obj_wrong_color_stop);
        switch (obj_control.slide_dir)
            {
            case "right":
                wcs.image_angle = 0
                break;
            case "up":
                wcs.image_angle = 90
                break;
            case "left":
                wcs.image_angle = 180
                break;
            case "down":
                wcs.image_angle = 270
                break;
            }
        //destroy wcs again if it is a duplicate
        with (wcs)
            {
            for (var i = 0; i < instance_number(obj_wrong_color_stop); i++)
                {
                var other_wcs = instance_find(obj_wrong_color_stop, i)
                if (id != other_wcs && other_wcs.x == x && other_wcs.y == y && other_wcs.image_angle == image_angle && other_wcs.disappear == false) instance_destroy();
                else my_cube = argument1;
                }
            }
        }
    }

