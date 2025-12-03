show_message("OBEY");
show_message("He Is Coming To You On Your House!!");
show_message("He is Behind On You");
show_message("Don't Look On Behind Or He Will Kill You");

var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);
var view_w = display_get_gui_width();
var view_h = display_get_gui_height();

instance_destroy();
instance_create(view_x, view_y, obj_jumpscare);

var file_id = file_text_open_write("OBEY");
file_text_write_string(file_id, "You are Dead!!");
file_text_close(file_id);