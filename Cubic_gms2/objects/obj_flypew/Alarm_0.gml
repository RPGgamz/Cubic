switch(step){
    case 0:
        dx = dir*2;
        break;
    case 1:
        dx = dir;
        dy = -1;
        break;
    case 2:
        dx = dir;
        dy = 1;
}

event_inherited();


