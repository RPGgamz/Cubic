
//variables
a = 1/20;
vel = 0;
w_screen = camera_get_view_width(view_get_camera(1))/2;
h_screen = camera_get_view_height(view_get_camera(1))/2;
w_bor = w_screen/2;
h_bor = h_screen/2;
weight_bor = 4

//surface
surf = -1

//views
view_set_visible(1, false);
view_set_visible(2, true);
cam = camera_create_view(100, 0, room_width, room_width)
camera_set_view_size(view_get_camera(2), room_width, room_height);
