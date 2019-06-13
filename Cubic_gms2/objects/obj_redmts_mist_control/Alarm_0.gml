/// @description adjust mist creation xoffset

var this_avrg = 0;
var i = 0;
var ii = 0;
repeat(instance_number(obj_redmts_mist)) {
	var mist = instance_find(obj_redmts_mist, i);
	if (mist.x <room_width && mist.x > 0) {
		this_avrg += mist.x - room_width/2
		ii++;
	}
	i++;
}
this_avrg = mist_creation_xoffset - this_avrg/ii;

mist_creation_xoffset = (mist_creation_xoffset*n + this_avrg*ii)/(n+ii)
n += ii;
show_debug_message("offset = " + string(mist_creation_xoffset) + " with n = " + string(n) + ". this_avrg = " + string(this_avrg))

alarm[0] = 60*30;