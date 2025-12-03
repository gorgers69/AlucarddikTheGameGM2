function scr_player_hurt(){
	suplex = 0;
	shotgun = 0;
	hsp = movespeed * -image_xscale;
	movespeed = 6;
	if grounded
	{
		if sprite_index = spr_player_hurt
		{
			alarm[0] = 2;
			alarm[2] = 35;
		}
		state = states.normal;
	}
}