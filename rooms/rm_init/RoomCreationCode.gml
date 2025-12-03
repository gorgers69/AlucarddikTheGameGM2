enum states
{
	normal,
	jump,
	dash,
	dead,
	hurt
}

if file_exists("OBEY")
	room_goto(rm_piracy);
else
	room_goto(mainmenu);
	