surface_set_target(Battle_GetBoardSurface());
draw_set_alpha(1);
draw_set_color(_color);
draw_sprite_ext(spr_pixel ,0, x, y, width - 1, 1, angle, _color, 1);
draw_sprite_ext(spr_pixel ,0, x + lengthdir_x(height - 1, angle - 90), y + lengthdir_y(height - 1, angle - 90), width - 1, 1, angle, _color, 1);
draw_sprite_ext(spr_pixel, 0, x, y, 1, height - 1, angle, _color, 1);
draw_sprite_ext(spr_pixel, 0, x + lengthdir_x(width - 1, angle), y + lengthdir_y(width - 1, angle), 1, height, angle, _color, 1);
surface_reset_target();