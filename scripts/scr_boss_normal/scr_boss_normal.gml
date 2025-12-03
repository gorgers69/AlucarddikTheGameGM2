function scr_boss_normal(){
	if object_index = obj_level1boss
	{
		image_speed = 0.35;
		movespeed = 0;
		jumptimer--;
		
		if jumptimer = 0
		{
			grounded = false;
			vsp = -13;
			movespeed = 3.5;
			state = boss_state.jump;
			flash = false;
		}
	}
}