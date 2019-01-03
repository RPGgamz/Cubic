/// @description clean up
obj_control.state = scr_idle;
surface_free(surf_room);

__view_set( e__VW.Visible, 2, false );
__view_set( e__VW.Visible, 1, true );
__view_set( e__VW.XView, 1, x );
__view_set( e__VW.YView, 1, y );

//stop animation
if (instance_exists(obj_pz_complete_animation)) instance_destroy(obj_pz_complete_animation);

