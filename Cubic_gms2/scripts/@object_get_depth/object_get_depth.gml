/// @description Returns the depth of the specified object.
/// @param {Number} obj The index of the object to check
/// @return {Number} depth of the object


var objID = argument0;
var val = 0;
if ((objID >= 0) && (objID < array_length_1d(global.__objectID2Depth))) {
	val = global.__objectID2Depth[objID];
	if (is_undefined(val)) {
		var parent = object_get_parent(objID);
		while(true) {
			if (parent != -100) val = global.__objectID2Depth[parent]
			else { val = 0; break; }
			if (is_undefined(val)) parent = object_get_parent(parent)
			else { break; }
		}
	}
}

return(val);