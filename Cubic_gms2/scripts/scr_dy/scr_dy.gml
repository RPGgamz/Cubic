/// @description scr_dy(extra_size)
/// @param extra_size
switch (obj_control.slide_dir) {
    case "up":
        return(-(move+argument0));
        break;
    case "down":
        return(move+argument0);
        break;
}
return(0);

