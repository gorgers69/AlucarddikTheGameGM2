if (!obj_player.flash)
{
	obj_player.sprite_index = spr_player_hurt;
	obj_player.state = states.hurt;
	obj_player.vsp = -3;
	obj_player.grounded = false;
	audio_play_sound(sfx_gib, 0, false);
	audio_play_sound(sfx_damage, 0, false);
	obj_player.flash = true;
	global.hp--;
}