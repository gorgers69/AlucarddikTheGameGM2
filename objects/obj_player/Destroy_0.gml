if !instance_exists(obj_levelend)
{
	instance_create(x, y, obj_dead);
	audio_play_sound(sfx_splat, 10, 0);
}