/// @description initiate
//settings
res_size = 2; //side length of each square in the effect, in pixels
effect_alpha = 1;
effect_power = 5;
effect_fade = 0.02 //how fast the new ripples get smaller than the first. 0 is not at all, bigger is faster.

ripple_speed = 1.5;
n_ripples = 6;
ripple_width = 15;

//variables
cam = obj_pz.pz[obj_pz.current_puzzle,0];
var pzdoorobj = obj_pz.pz[obj_pz.current_puzzle,1];
var pz_cube = instance_position(pzdoorobj.x, pzdoorobj.y, obj_cube);
x = pz_cube.x;
y = pz_cube.y;;
w = cam.sprite_width
h = cam.sprite_height
surfx = cam.x - w/2
surfy = cam.y - h/2
n_ver_x = round(w/res_size); //number of vertexes along x-axis
n_ver_y = round(h/res_size);
t = 0;
m = 2*n_ripples*ripple_width; //width of the effect in terms of t

surf_start = -1;
surf_effect = -1;

//initiate arrays
var xx = n_ver_x;
repeat (n_ver_x) {
    xx--;
    var yy = n_ver_y;
    repeat (n_ver_y) {
        yy--;
        ver_e[xx, yy] = 0; //the effects power on the specific vertex
        ver_a[xx, yy] = degtorad(point_direction(x-surfx, y-surfy, xx*res_size, yy*res_size)); //the effects angle on the specific vertex
    }
}

