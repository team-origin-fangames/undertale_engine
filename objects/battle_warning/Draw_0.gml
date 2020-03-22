surface_set_target(Battle_GetBoardSurface());
draw_set_alpha(1);
draw_set_color(_color);
draw_sprite_ext(spr_pixel,0, x, y, _width - 1, 1, _angle, _color, 1);
draw_sprite_ext(spr_pixel,0, x + lengthdir_x(_height - 1, _angle - 90), y + lengthdir_y(_height - 1, _angle - 90),width-1,1,angle,_color, 1);
draw_sprite_ext(spr_pixel,0, x, y, 1, _height - 1, _angle, _color, 1);
draw_sprite_ext(spr_pixel,0, x + lengthdir_x(_width - 1, _angle), y + lengthdir_y(_width - 1, _angle), 1, _height, _angle, _color, 1);
surface_reset_target();