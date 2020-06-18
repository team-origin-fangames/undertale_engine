var color = c_white;
switch (type)
{
	case BATTLE_BULLET_TYPE.NORMAL:
		break;
		
	case BATTLE_BULLET_TYPE.BLUE:
		color = make_color_rgb(20, 169, 255);
		break;
		
	case BATTLE_BULLET_TYPE.ORANGE:
		color = make_color_rgb(255, 160, 64);
		break;
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * scale_x, image_yscale * scale_y, image_angle, color, image_alpha);
draw_sprite_ext(spr_bullet_gb_beam, 0, x + lengthdir_x(scale_x * 25, image_angle), y + lengthdir_y(scale_x * 25, image_angle), _scale_x, _scale_y * _beam_scale, image_angle, color, _beam_alpha);
draw_sprite_ext(spr_bullet_gb_beam, 1, x + lengthdir_x(scale_x * 25 + scale_x * sprite_get_width(spr_bullet_gb_beam), image_angle), y + lengthdir_y(_scale_x * 25 +_scale_x * sprite_get_width(spr_bullet_gb_beam), image_angle), 999, scale_y * _beam_scale, image_angle, color, _beam_alpha);