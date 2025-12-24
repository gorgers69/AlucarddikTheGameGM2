draw_set_font(global.font);
draw_set_halign(fa_center);
//draw_set_valign(fa_middle);
draw_set_color(c_white);
if !instance_exists(obj_levelend) && !instance_exists(obj_bossend) && room != rm_Darklevel
{
	draw_sprite(spr_HUD, 0, 96, 96);
	draw_sprite(spr_HealthMeter, health_index, 96, 160);
	if !instance_exists(obj_bosssystem)
	{
		draw_sprite(spr_ScoreHUD, 0, 416, 96);
		draw_text(430, 96, string_hash_to_newline(global.collect));
	}
	//if (instance_exists(obj_player) && obj_player.state != states.dead)
	//	draw_text(47, 41, string_hash_to_newline(global.hp));
	//draw_text(64, 416, string_hash_to_newline(global.ammo));
}