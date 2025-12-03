function scr_player_jump(){
	scr_getinput();
	hsp = movespeed * image_xscale;
	movespeed = 0;
	if grounded
		state = states.normal;
	if key_left || key_right
	{
		//sprite_index = spr_player_move;
		movespeed = 4;
		image_xscale = key_left ? -1 : 1;
	}
	if vsp < 0
		sprite_index = spr_player_jump;
	else if vsp > 0
	{
		spring = false;
		sprite_index = spr_player_fall;
	}
	if (key_shoot2 && global.ammo != 0)
	{
		image_index = 0;
		state = states.dash;
		sprite_index = spr_player_shot;
		audio_play_sound(sfx_explosion, 0, false);
		//instance_create(x, y, obj_blast);
		with instance_create(x, y, obj_missile)
		{
			image_xscale = other.image_xscale;
			hspeed = other.image_xscale * 5;
		}
		global.ammo--;
		//shotgun = true;
	}
}