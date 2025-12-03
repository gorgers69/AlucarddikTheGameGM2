scr_collision();
with (instance_create(x, y, obj_dead))
{
	image_xscale = obj_enemy.image_xscale;
	sprite_index = obj_enemy.spr_dead;
	movespeed = 6;
}
audio_play_sound(sfx_enemyhit, 10, 0);
var i = random_range(0, 100);
if (i >= 91)
	audio_play_sound(choose(sfx_deathscream, sfx_deathscream2), 10, 0);
global.kill++;