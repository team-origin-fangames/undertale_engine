if (!_outside)
{
	surface_set_target(Battle_GetBoardSurface());
}

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

var bone_end_length = sprite_get_width(spr_bullet_bone_end);

if (_no_bottom)
{
	draw_sprite_ext(spr_bullet_bone_body, 0, x, y, _length - bone_end_length, 1, _direction, color, 1);
	draw_sprite_ext(spr_bullet_bone_end, 0 , x + lengthdir_x(_length, _direction), y + lengthdir_y(_length, _direction), -1, 1, _direction, color, 1);
} else {
	draw_sprite_ext(spr_bullet_bone_end, 0, x, y, 1, 1, _direction, color, 1);
	draw_sprite_ext(spr_bullet_bone_body, 0, x + lengthdir_x(bone_end_length, _direction), y + lengthdir_y(bone_end_length, _direction), _length - bone_end_length * 2, 1, _direction, color, 1);
	draw_sprite_ext(spr_bullet_bone_end, 0, x + lengthdir_x(_length, _direction), y + lengthdir_y(_length, _direction), -1, 1, _direction, color, 1);
}

if (!_outside)
{
	surface_reset_target();
}