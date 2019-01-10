/// @description put the camera on the cube
if (!instance_exists(player_cube)) { instance_destroy(); exit;}

__view_set( e__VW.XView, 1, player_cube.x - __view_get( e__VW.WView, 1 )/2 );
__view_set( e__VW.YView, 1, player_cube.y - __view_get( e__VW.HView, 1 )/2 );
    
bb = (obj_display_manager.ideal_width-120)/2*obj_display_manager.view_zoom;
if (__view_get( e__VW.XView, 1 ) < -bb) __view_set( e__VW.XView, 1, -bb );
if (__view_get( e__VW.XView, 1 ) > room_width-120*obj_display_manager.view_zoom-bb) __view_set( e__VW.XView, 1, room_width-120*obj_display_manager.view_zoom-bb );
if (__view_get( e__VW.YView, 1 ) < 0) __view_set( e__VW.YView, 1, 0 );
if (__view_get( e__VW.YView, 1 ) > room_height-108*obj_display_manager.view_zoom) __view_set( e__VW.YView, 1, room_height-108*obj_display_manager.view_zoom );
