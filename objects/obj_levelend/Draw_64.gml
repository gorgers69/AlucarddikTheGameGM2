if !instance_exists(obj_loading)
{
	draw_set_font(global.font);
	//draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(288, 64, "you beat the level");
	draw_text(288, 160, "enemy killed");
	draw_text(288, 192, string(global.kill));
	draw_text(288, 224, "score");
	draw_text(288, 256, string(global.collect));
	if room != rm_level11
	{
		draw_text(288, 288, "secret founded");
		draw_text(288, 320, string(global.secret));
	}
}