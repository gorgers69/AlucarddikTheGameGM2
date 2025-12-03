function scr_joe_throwknife(){
	sprite_index = spr_joe_throwknife;
	if image_index = 7
	{
		with instance_create(x, y, obj_knife)
		{
			image_xscale = other.image_xscale;
			hspeed = other.image_xscale * 3.5;
		}
	}
	if floor(image_index) == (image_number - 1)
	{
		state = boss_state.normal;
		jumptimer = 100;
		sprite_index = spr_joe_stun;
		flash = true;
		image_index = 0;
	}
}