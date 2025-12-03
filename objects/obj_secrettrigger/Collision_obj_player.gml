var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);
var view_w = display_get_gui_width();
var view_h = display_get_gui_height();

instance_create(view_x, view_y, obj_secretfound);
instance_destroy();
audio_play_sound(sfx_secretfound, 0, false);
global.secret++;