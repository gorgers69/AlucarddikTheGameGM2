var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

layer_x("Background", view_x);
layer_y("Background", view_y);
layer_x("BG1", view_x * 0.25);
layer_y("BG1", view_y * 0.25);