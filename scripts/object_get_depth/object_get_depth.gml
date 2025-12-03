function object_get_depth(argument0){
	var ObjID = argument0;
	var ret = 0;
	global.__objectID2Depth = [];
	if (ObjID >= 0) && (ObjID < array_length_1d(global.__objectID2Depth))
		ret = global.__objectID2Depth[ObjID];
	return ret;
}