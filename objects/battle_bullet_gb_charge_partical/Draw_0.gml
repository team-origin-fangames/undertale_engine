var color = c_white;
switch (_type)
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

draw_sprite_ext(spr_bullet_gb_charge, 0, x, y, image_xscale, image_yscale, direction, color, image_alpha);