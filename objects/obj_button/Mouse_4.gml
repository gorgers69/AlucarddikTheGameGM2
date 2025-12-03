
//Option Buttons


//Full Screen

//Disable
if state = option_button.fullOff
	window_set_fullscreen(false);

//Enable
if state = option_button.fullOn
	window_set_fullscreen(true);



//Leave Options
if state = option_button.Leave
{
	room_goto(mainmenu);
	audio_stop_sound(mu_options);
}



//resolution

if state = option_button.littlescale
{
	window_set_size(270, 240);
}

if state = option_button.onescale
{
	window_set_size(540, 480);
}

if state = option_button.twoscale
{
	window_set_size(810, 720);
}

if state = option_button.threescale
{
	window_set_size(1080, 960);
}