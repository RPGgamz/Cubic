
//variables
a = 1/20;
vel = 0;

//surface
surf = -1

//views
view_set_visible(1, false);
view_set_visible(2, true);
cam = camera_create_view(0, 0, room_width, room_width)
camera_set_view_size(view_get_camera(2), room_width, room_height);
