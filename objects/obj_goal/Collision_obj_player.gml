var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);

instance_create(view_x, view_y, obj_levelend);
instance_create(view_x, view_y, obj_levelendanim);
instance_destroy();
instance_destroy(obj_player);
instance_destroy(obj_secretfound);
scr_destroy_hitbox();
audio_stop_sound(sfx_dash);

//stop music
audio_stop_all();

audio_play_sound(mu_clear, 10, 0);