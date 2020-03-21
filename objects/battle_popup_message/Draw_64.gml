draw_set_font(Lang_GetFont(Lang_GetString("font.dialog.0")));
draw_set_alpha(_alpha);

draw_set_color(c_black);
draw_text(x + 1, y, _text);
draw_text(x - 1, y, _text);
draw_text(x, y + 1, _text);
draw_text(x, y - 1, _text);

draw_set_color(c_white);
draw_text(x, y, _text);

draw_set_alpha(1);