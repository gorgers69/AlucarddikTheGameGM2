if sprite_index = spr_player_dead
{
	audio_stop_all();
	room_restart();
}
else
	instance_destroy();