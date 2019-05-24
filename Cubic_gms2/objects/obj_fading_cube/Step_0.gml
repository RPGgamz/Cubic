
time++;

var tempspd = spd/((time/3)+1);
image_alpha = image_alpha*fadespd

if (image_alpha < 0.001) instance_destroy();

switch (dir) {
    case "left":
        x -= tempspd;
        break;
    case "right":
        x += tempspd;
        break;
    case "up":
        y -= tempspd;
        break;
    case "down":
        y += tempspd;
        break;
}