enum option_button {
	fullOn,
	fullOff,
	Leave,
	onescale,
	twoscale,
	threescale,
	littlescale,
}

toggle_fullscreen = window_get_fullscreen();

state = option_button.Leave;