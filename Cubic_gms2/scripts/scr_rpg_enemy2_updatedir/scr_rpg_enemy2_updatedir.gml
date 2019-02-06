/// @description update dir
switch (dir) {
	case "up":
		dx = 0;
		dy = -obj_rpg_control.enemy_spd;
		break;
	case "down":
		dx = 0;
		dy = obj_rpg_control.enemy_spd;
		break;
	case "left":
		dx = -obj_rpg_control.enemy_spd;
		dy = 0;
		break;
	case "right":
		dx = obj_rpg_control.enemy_spd;
		dy = 0;
		break;
}


if ( place_meeting( x+dx , y+dy , obj_solid) ) {
	switch (dir) {
		case "up":
			dir = "down"; break;
		case "down":
			dir = "up"; break;
		case "left":
			dir = "right"; break;
		case "right":
			dir = "left"; break;
	}
}