
var cam = view_get_camera(2)
layer_x(l_treetop, lerp(0,-20, camera_get_view_x(cam)/camera_get_view_width(cam)));
layer_y(l_treetop, lerp(0,-20, camera_get_view_y(cam)/camera_get_view_height(cam)));