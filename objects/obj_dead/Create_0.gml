vspeed = -8;
gravity = 0.4;
movespeed = 0;
image_speed = 0.35;
if (sprite_index = spr_player_dead)
{
	audio_stop_sound(sfx_damage);
	audio_stop_sound(sfx_gib);
}
