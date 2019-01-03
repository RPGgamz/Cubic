/// @description initiate
//coordinates
x_start = __view_get( e__VW.XView, 1 );
y_start = __view_get( e__VW.YView, 1 );
x_end = x;
y_end = y;


//timing
transition_time = 30+round((distance_to_point(x_start, y_start)/8)^0.5-1); //a shot in the dark
step = 0;

//surface and view
surf_room = -1;

__view_set( e__VW.Visible, 1, false );
__view_set( e__VW.Visible, 2, true );
__view_set( e__VW.WView, 2, room_width );
__view_set( e__VW.HView, 2, room_height );

//working variables
progress = 0;

