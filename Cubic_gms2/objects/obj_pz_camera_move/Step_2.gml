/// @description calculate the position of the camera

//(event end_step instead of just step, because this object is created in the step event, and we want this to trigger the same frame, and not get skipped)

var timer = step/transition_time;
step++;

/* FORSKELLIGE TYPER OVERGANG
--------------konstant hastighed:
progress = timer;

--------------lineært aftagende hastighed:
progress = 2*timer - timer*timer;

--------------hastighed voksende og aftagende som et andengradspolinomium
progress = 3*timer*timer - 2*timer*timer*timer;

--------------blanding af ovenstående (k0=konstant, k1= lineær, k2 = andengrads)
var k0 = 50
var k1 = 25
var k2 = 25
progress = (timer*(k0+2*k1+timer*(-k1+3*k2-2*k2*timer)))/(k2+k1+k0);
*/

var k0 = 0
var k1 = 1
var k2 = 1
progress = (timer*(k0+2*k1+timer*(-k1+3*k2-2*k2*timer)))/(k2+k1+k0);

x = lerp(x_start, x_end, progress);
y = lerp(y_start, y_end, progress);

//update view1 coordinates, since they are refferenced for mini-map in obj_pz
obj_pz.x = x;
obj_pz.y = y;

//end
if (timer == 1) {
    instance_destroy();
}
