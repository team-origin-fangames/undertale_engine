draw_set_font(Lang_GetFont("dotumche"));
draw_set_halign(fa_center);
draw_set_color(c_red);
draw_text(320,100,"/");
draw_set_halign(fa_right);
draw_text(320-5,100,string(_frame_current));
draw_set_halign(fa_left);
draw_text(320+5,100,string(_frame_number));
draw_text(5,5,string(_fps));