/// @description create surf_room, and set it as view_surface
if !surface_exists(surf_room)
    {
    surf_room = surface_create(room_width, room_height);
    __view_set( e__VW.SurfaceID, 2, surf_room );
    }

