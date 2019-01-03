/// @description disappear

if (instance_exists(my_cube))
    {
    if (my_cube.stop == false) disappear = true;
    }
else disappear = true;


if (image_speed == 0 && disappear == true) instance_destroy();

