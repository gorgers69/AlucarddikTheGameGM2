with (instance_create(x, y, obj_dead))
{
	image_xscale = obj_jakey.image_xscale;
	sprite_index = obj_jakey.spr_dead;
	movespeed = 6;
}
global.kill++;
audio_play_sound(sfx_jakeydead, 0, 0);