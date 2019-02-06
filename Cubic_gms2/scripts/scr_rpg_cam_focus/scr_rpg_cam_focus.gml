

camera_set_view_pos( view_cam , cam.x-camera_get_view_width(view_cam)/2 , cam.y-camera_get_view_height(view_cam)/2 );

with (all) {
	if (!object_is_ancestor(object_index, obj_rpg_enemy) && !object_is_ancestor(object_index, obj_rpg_collectible) && !object_is_ancestor(object_index, obj_solid)) continue;
	if (collision_rectangle(x-1, y-1, x, y, other.cam, false, true)) visible = true;
	else visible = false;
}

with (cam) scr_rpg_cam_save();
