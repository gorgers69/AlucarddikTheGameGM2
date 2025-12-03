scr_collision();

hsp = movespeed * image_xscale;
	
if (((place_meeting_solid(x + 1, y) && image_xscale = 1) || place_meeting_solid(x - 1, y) && image_xscale = -1))
	image_xscale *= -1;
	
if (((place_meeting(x + 1, y, obj_enemyturn) && image_xscale = 1) || place_meeting(x - 1, y, obj_enemyturn) && image_xscale = -1))
	image_xscale *= -1;