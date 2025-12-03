function scr_boss_jump(){
	if object_index = obj_level1boss
	{
		sprite_index = spr_joe_jump;
		
		if grounded
		{
			image_xscale *= -1;
			state = boss_state.attack;
			movespeed = 0;
			image_index = 0;
		}
	}
}