var _player = obj_player;
var _width = camera_get_view_width(view_camera[0]);
var _height = camera_get_view_height(view_camera[0]);
if (instance_exists(_player))
{
	var camera_x = _player.x - (_width * 0.5);
	var camera_y = _player.y - (_height * 0.5);
	camera_set_view_pos(view_camera[0], camera_x, camera_y);
	camera_set_view_pos(view_camera[1], camera_x, camera_y);
}