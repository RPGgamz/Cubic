/// @description make zone white
var j = 0;
repeat(instance_number(obj_zone)) {
	var zone = instance_find(obj_zone, j);
	if (zone.target_locked_wall == ID) {
		zone.completed = true;
		break;
	}
	j++;
}