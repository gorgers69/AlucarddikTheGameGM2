draw_set_font(global.font);
//draw_set_halign(fa_left);
//draw_set_valign(fa_left);
draw_set_color(c_white);
draw_text(160, 288, "start game");
draw_text(160, 352, "load game");
draw_text(160, 416, "options");
draw_text(160, 448, "quit game");

if select = 0
	draw_sprite(spr_cursor, -1, 128, 288);
else if select = 1
	draw_sprite(spr_cursor, -1, 128, 352);
else if select = 2
	draw_sprite(spr_cursor, -1, 128, 416);
else if select = 3
	draw_sprite(spr_cursor, -1, 128, 448);