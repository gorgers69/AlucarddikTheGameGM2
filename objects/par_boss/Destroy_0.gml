with (instance_create(x, y, obj_dead))
{
	image_xscale = obj_enemy.image_xscale;
	sprite_index = obj_enemy.spr_dead;
}
audio_play_sound(sfx_splat, 10, 0);
audio_play_sound(sfx_bossscream, 10, 0);
global.kill++;
instance_destroy(obj_camera);
instance_create(0, 0, obj_bossend);

audio_stop_sound(mu_boss);

audio_play_sound(mu_stageclear, 10, 0);