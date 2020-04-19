draw_set_font(font_mars_needs_cunnilingus);
draw_set_color(c_white);
draw_text(x,y,Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME)+"   LV "+string(Player_GetLv()));
draw_sprite(spr_battle_ui_hp,0,x+214,y+4);

draw_sprite_ext(spr_pixel,0,x+245,y-1,Player_GetHpMax()*1.25,21,0,make_color_rgb(192,0,0),1);

switch (Player_IsKarmaEnabled())
{
	case true:
		draw_sprite_ext(spr_pixel, 0, x + 245 + Player_GetHp() * 1.25, y - 1, Player_GetKarma() * 1.25, 21, 0, make_color_rgb(255, 40, 255), 1);
		draw_sprite_ext(spr_pixel, 0 , x + 245, y - 1, Player_GetHp() * 1.25, 21, 0, make_color_rgb(255, 255, 0), 1);
		
		draw_sprite_ext(spr_battle_ui_kr, 0 ,x + 245 + Player_GetHpMax() * 1.25 + 8, y + 4, 1, 1, 0, c_white, 1);
		
		var hp_color = (Player_GetKarma() <= 0 ? c_white : make_color_rgb(255, 40, 255));
		draw_set_color(hp_color);
		draw_text(x + 245 + Player_GetHpMax() * 1.25 + 46, y, string(Player_GetHp() + Player_GetKarma()) + " / " + string(Player_GetHpMax()));
		break;
		
	case false:
		draw_sprite_ext(spr_pixel, 0 , x + 245, y - 1, Player_GetHp() * 1.25, 21, 0, make_color_rgb(255, 255, 0), 1);
		
		draw_text(x + 245 + Player_GetHpMax() * 1.25 + 14, y, string(Player_GetHp()) + " / " + string(Player_GetHpMax()));
		break;
}

draw_sprite_ext(spr_battle_ui_hp_mask, 0 ,x + 247 , y + 9, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_battle_ui_hp_mask, 0, x + 243 + Player_GetHpMax() * 1.25, y + 9, - 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_pixel, 0, x + 256, y - 3, Player_GetHpMax() * 1.25 - 22, 2, 0, c_white, 1);
draw_sprite_ext(spr_pixel, 0, x + 256, y + 20, Player_GetHpMax() * 1.25 - 22, 2, 0, c_white, 1);