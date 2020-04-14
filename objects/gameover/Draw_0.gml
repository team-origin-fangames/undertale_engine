if (sprite_exists(sprite_index))
{
	draw_self();
}

if (_ready_draw)
{
	draw_sprite_ext(spr_gameover, 0, 320, _gameover_part_0_y, 2, 2, 0, c_white, _gameover_part_0_alpha);
	draw_sprite_ext(spr_gameover, 1, 320, _gameover_part_1_y, 2, 2, 0, c_white, _gameover_part_1_alpha);
}