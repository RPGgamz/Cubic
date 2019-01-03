/*/move the view towards the "current camera"
var view_x = view_xview[1] + view_wview[1]/2
var view_y = view_yview[1] + view_hview[1]/2;
var cc = ds_list_find_value(camera_zones, current_camera);

if (1 > abs(view_x - cc.x) && 1 > abs(view_y - cc.y)) {
    state = scr_idle;
    view_xview[1] = cc.x - view_wview[1]/2
    view_yview[1] = cc.y - view_hview[1]/2
}

view_xview[1] += (cc.x - view_x) * .10;
view_yview[1] += (cc.y - view_y) * .10;
