scr_getinput();

if key_pause
{
	if (!pause)
	{
		audio_pause_all();
	    pause = 1;
	    instance_deactivate_all(true);
	}
	else
	{
		audio_resume_all();
	    pause = 0;
	    instance_activate_all();
	}
}