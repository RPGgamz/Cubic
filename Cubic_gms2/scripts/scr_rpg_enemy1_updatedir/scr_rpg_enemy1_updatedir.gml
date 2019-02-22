/// @description update dir
switch (dir) {
	case "down": dir = "left"; break;
	case "left": dir = "up"; break;
	case "up": dir = "right"; break;
	case "right": dir = "down";
}