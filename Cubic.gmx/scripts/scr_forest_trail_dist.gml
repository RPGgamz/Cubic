var ww = argument0
var hh = argument1
var pix = argument2
switch (obj_control.slide_dir) {
    case "left":
    case "right":
        var maxdist = (hh-1)/2
        return(abs(pix-1 - hh*(floor((pix-1)/hh)) - maxdist)/maxdist);
        break;
    case "up":
    case "down":
        var maxdist = (ww-1)/2
        return(abs(ceil((pix-2)/hh) - maxdist)/maxdist);
        break;
}
