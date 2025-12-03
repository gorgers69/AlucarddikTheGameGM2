function scr_load(){
	if file_exists("save.sav")
	{
		audio_stop_all();
		var LoadFile = file_text_open_read("save.sav");
		var LoadedRoom = file_text_read_real(LoadFile);
		file_text_close(LoadFile);
		room_goto(LoadedRoom);
		if room != rm_level11
		{
			instance_create(0, 0, obj_camera);
			instance_create(0, 0, obj_parrallax);
		}
	}
	else
	{
		show_message("Unable To Load The Game Without The Save File You Idiot!!");
	}
}