/// @description calculate vertex positions

var u = t-m; //distance from center to inner edge of effect "ring"
if (u > w) instance_destroy();

var xx = 0;
repeat (n_ver_x) {
    var yy = 0;
    repeat (n_ver_y) {
        var dist = distance_to_point(surfx+xx*res_size, surfy+yy*res_size)
        if !(u < dist && dist < t) ver_e[xx, yy] = 0;
        else ver_e[xx, yy] = -sin((dist - t)*pi/ripple_width)*effect_power*exp(effect_fade*(dist-t+0.5*ripple_width));
        yy++;
    }
    xx++;
}

t += ripple_speed;

