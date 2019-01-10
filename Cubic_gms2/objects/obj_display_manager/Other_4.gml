/// @description resizing the view/resolution by view_zoom

var current_view_room = view_zoom;

if (room == rm_red_mountains_1c) {
    view_zoom = 2;   
} else {                            //with this code we would have to put every room thats normal/big
    view_zoom = 1;                  //on a list here. Maybe change it -Victor
}
                                    //Idea: a for-loop in the create event that cycles through every room,
                                    //checks if its size is double, and then put the id and zoom_view
                                    //value into an array. -Victor
                                    

//if the view_zoom has changed, the app.surface has to increase/decrease resolution:
if (current_view_room != view_zoom) {
	view_hview[1] = ideal_height*view_zoom;
	view_wview[1] = ideal_width*view_zoom;

	surface_resize(application_surface, ideal_width*view_zoom, ideal_height*view_zoom);
}