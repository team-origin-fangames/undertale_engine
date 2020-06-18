if (!outside)
{
	surface_set_target(Battle_GetBoardSurface());
}

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

var bone_end_length = sprite_get_width(spr_bullet_bone_end);
switch (origin)
{
	case BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER:

		if (no_bottom)
		{
			draw_sprite_ext(spr_bullet_bone_body, 0, x, y, length - bone_end_length, 1, dir, color, 1);
			draw_sprite_ext(spr_bullet_bone_end, 0 , x + lengthdir_x(length, dir), y + lengthdir_y(length, dir), -1, 1, dir, color, 1);
		} else 
		{
			draw_sprite_ext(spr_bullet_bone_end, 0, x, y, 1, 1, dir, color, 1);
			draw_sprite_ext(spr_bullet_bone_body, 0, x + lengthdir_x(bone_end_length, dir), y + lengthdir_y(bone_end_length, dir), length - bone_end_length * 2, 1, dir, color, 1);
			draw_sprite_ext(spr_bullet_bone_end, 0, x + lengthdir_x(length, dir), y + lengthdir_y(length, dir), -1, 1, dir, color, 1);
		}
		break;
		
	case BATTLE_BULLET_BONE_ORIGIN.MIDDLE_CENTER:
		if (_no_bottom)
		{
			draw_sprite_ext(spr_bullet_bone_body, 0, x + lengthdir_x((length - bone_end_length) / 2, dir - 180), y + lengthdir_y((length - bone_end_length) / 2, dir - 180), length - bone_end_length, 1, dir, color, 1);
			draw_sprite_ext(spr_bullet_bone_end, 0, x + lengthdir_x(length / 2, dir), y + lengthdir_y(length / 2, dir), -1, 1, dir, color, 1);
		}else
		{
			draw_sprite_ext(spr_bullet_bone_body, 0, x + lengthdir_x((length - bone_end_length * 2) / 2, dir - 180), y + lengthdir_y((length - bone_end_length * 2) / 2, dir - 180), length - bone_end_length * 2, 1, dir, color, 1);
			draw_sprite_ext(spr_bullet_bone_end, 0, x + lengthdir_x(length / 2, dir), y + lengthdir_y(length / 2, dir), -1, 1, dir, color, 1);
			draw_sprite_ext(spr_bullet_bone_end, 0, x + lengthdir_x(length / 2,  dir - 180), y + lengthdir_y(length / 2, dir - 180), 1, 1, dir, color, 1);
		}
		break;
}

if (!outside)
{
	surface_reset_target();
}