scr_getinput();

if (key_down && select != 3)
	select++;
if (key_up && select != 0)
	select--;
	
if (key_start)
{
	if select = 0
	{
		audio_stop_sound(mu_title);
		instance_create(0, 0, obj_loading);
	}
	if select = 1
		scr_load();
	if select = 2
	{
		audio_stop_sound(mu_title);
		room_goto(rm_options);
	}
	else if select = 3
		game_end();
}