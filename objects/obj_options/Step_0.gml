scr_getinput();

if (key_down && select != 1)
	select++;
if (key_up && select != 0)
	select--;

if select = 0
{
	if key_left && window_set_fullscreen(false)
		window_set_fullscreen(true);
	else if key_right && window_set_fullscreen(true)
		window_set_fullscreen(false);
}
else if select = 1
{
	if key_start
	{
		room_goto(mainmenu);
		audio_stop_sound(mu_options);
	}
}