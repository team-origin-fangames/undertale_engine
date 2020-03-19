image_xscale = _width / 2;
image_angle = _angle;
switch (_type)
{
	case BATTLE_PLATFORM_TYPE.GREEN:
		sprite_index = spr_battle_platform_green;
		break;
		
	case BATTLE_PLATFORM_TYPE.PURPLE:
		sprite_index = spr_battle_platform_purple;
		break;
}

if (!_bounce_x)
{
	x = x + _speed_x;
}else
{
	repeat (abs(_speed_x) * 10)
	{
		if (!place_meeting(x + sign(_speed_x) * 0.1, y, block))
		{
			x = x + sign(_speed_x) * 0.1;
		}else
		{
			_speed_x = -_speed_x;
			break;
		}
	}
}
y = y + _speed_y;

if (_outside)
{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
} else {
	depth = DEPTH_BATTLE.BULLET;
}

if (Battle_GetState() != BATTLE_STATE.IN_TURN)
{
	instance_destroy();
}