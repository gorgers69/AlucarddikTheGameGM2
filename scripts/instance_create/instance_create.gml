function instance_create(argument0, argument1, argument2){
	var mydepth = object_get_depth(argument2);
	return instance_create_depth(argument0, argument1, -100, argument2);
}