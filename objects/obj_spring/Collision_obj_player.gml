var _spring = id;
with (obj_player)
{
	if (place_meeting(x, (y + 1), _spring) && !obj_player.spring)
	{
		if room = rm_level13
			vsp = -22;
		else
			vsp = -18;
		state = states.jump;
		_spring.image_index = 0;
		_spring.image_speed = 0.25;
		audio_play_sound(sfx_spring, 10, 0);
		audio_stop_sound(sfx_jump);
		suplex = 0;
		spring = true;
	}
}