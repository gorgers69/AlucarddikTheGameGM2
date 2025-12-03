scr_getinput();
if (obj_player.state = states.jump)
{
	instance_destroy();
	if key_jump
		obj_player.vsp = -9;
	else
		obj_player.vsp = -6;
	obj_player.sprite_index = spr_player_jump;
}