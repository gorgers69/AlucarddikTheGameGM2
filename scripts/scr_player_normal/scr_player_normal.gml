function scr_player_normal(){
	scr_getinput();
	if !crouch
	{
		hsp = movespeed * image_xscale;
		movespeed = 0;
		if room != rm_Darklevel
		{
			if key_jump && grounded
			{
				image_index = 0;
				sprite_index = spr_player_jump;
				grounded = false;
				state = states.jump;
				audio_play_sound(sfx_jump, 10, 0);
				vsp = -9.5;
			}
		}
		if key_left || key_right
		{
			sprite_index = spr_player_move;
			if room = rm_Darklevel
				movespeed = 1;
			else
				movespeed = 4;
			image_xscale = key_left ? -1 : 1;
		}
		if !grounded
			sprite_index = spr_player_fall;

		if movespeed = 0 && grounded
			sprite_index = spr_player_idle;
		else if !grounded
			sprite_index = spr_player_fall;	
		if room != rm_Darklevel
		{
			if (key_shoot && grounded)
			{
				image_index = 0;
				state = states.dash;
				sprite_index = spr_player_dash;
				movespeed = 6.5;
				suplex = 1;
				audio_play_sound(sfx_dash, 10, 0);
			}
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
	if (key_down2 && grounded)
	{
		hsp = 0;
		crouch = true;
		mask_index = spr_player_crouchmask;
		sprite_index = spr_player_crouch;
	}
	if crouch && !key_down2
	{
		mask_index = spr_player_mask;
		sprite_index = spr_player_idle;
		crouch = false;
	}
}