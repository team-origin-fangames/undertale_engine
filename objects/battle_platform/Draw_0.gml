if (!_outside)
{
	surface_set_target(Battle_GetBoardSurface());
}

draw_sprite_ext(sprite_index, 1, x, y, _width / 2, 1, _angle, c_white, 1);
draw_sprite_ext(sprite_index, 0, x - lengthdir_x(_width / 2, _angle), y - lengthdir_y(_width / 2, _angle), 0.5, 1, _angle, c_white, 1);
draw_sprite_ext(sprite_index, 0, x + lengthdir_x(_width / 2, _angle), y + lengthdir_y(_width / 2, _angle), 0.5, 1, _angle, c_white, 1);

if (!_outside)
{
	surface_reset_target();
}