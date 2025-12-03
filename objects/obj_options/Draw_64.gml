draw_set_font(global.font);
draw_text(160, 160, "full screen");
draw_text(160, 352, "leave");

if window_set_fullscreen(true)
	draw_text(160, 192, "on");
else if window_set_fullscreen(false)
	draw_text(160, 192, "off");
	
if select = 0
	draw_sprite(spr_cursor, -1, 128, 160);
else if select = 1
	draw_sprite(spr_cursor, -1, 128, 352);