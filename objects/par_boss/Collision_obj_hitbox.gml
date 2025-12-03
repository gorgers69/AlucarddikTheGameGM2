global.Bosshp--;

obj_player.sprite_index = spr_player_jump;
obj_player.state = states.hurt;
obj_player.vsp = -3;
obj_player.grounded = false;

audio_play_sound(sfx_gib, 0, 0);
audio_play_sound(sfx_bosshit, 0, 0);

if global.Bosshp = 0
	instance_destroy();