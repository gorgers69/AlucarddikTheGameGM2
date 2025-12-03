if global.ammo < 100
{
	instance_destroy();
	audio_play_sound(sfx_pickup, 0, false);
}