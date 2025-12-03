scr_collision();
switch state
{
	case states.normal: scr_player_normal(); break;
	case states.jump: scr_player_jump(); break;
	case states.dash: scr_player_dash(); break;
	case states.dead: scr_player_dead(); break;
	case states.hurt: scr_player_hurt(); break;
}

//Hitbox
if suplex
	instance_create(x, y, obj_hitbox);

if shotgun
	instance_create(x, y, obj_blast);
	
if deadtimer = 0
{
	audio_stop_all();
	room_restart();
}

if !flash
	image_alpha = 1;
	
if global.hp = 0
{
	if state != states.dead
		instance_destroy();
}

if (global.debugmode = true)
{
	if keyboard_check_pressed(ord("G"))
	{
		audio_stop_all();
		room_goto_next();
	}
	if keyboard_check_pressed(ord("T"))
	{
		audio_stop_all();
		room_goto(rm_test);
	}
	if keyboard_check_pressed(ord("K"))
		instance_destroy();
	if keyboard_check_pressed(ord("R"))
	{
		room_restart();
		audio_stop_all();
	}
	if keyboard_check_pressed(ord("U"))
		game_restart();
		
	with(obj_solid)
		visible = true;
	with(obj_platform)
		visible = true;
	with(obj_slope)
		visible = true;
	with(obj_sidePlatform)
		visible = true;
	with(obj_slopePlatform)
		visible = true;
	with(obj_secrettrigger)
		visible = true;
	with(obj_movingPlatformTrigger)
		visible = true;
	with(obj_movingPlatform)
		sprite_index = spr_unownMovingPlatform;
}