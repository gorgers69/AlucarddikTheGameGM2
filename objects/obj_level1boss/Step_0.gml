scr_collision();

switch state
{
	case boss_state.normal: scr_boss_normal(); break;
	case boss_state.jump: scr_boss_jump(); break;
	case boss_state.attack: scr_joe_throwknife(); break;
}

hsp = movespeed * image_xscale;
	
if (((place_meeting_solid(x + 1, y) && image_xscale = 1) || place_meeting_solid(x - 1, y) && image_xscale = -1))
	image_xscale *= -1;

if throwknife
	instance_create(x, y, obj_knife);