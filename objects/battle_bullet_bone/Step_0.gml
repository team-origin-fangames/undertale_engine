image_angle = _direction;
image_xscale = _length;

if (_outside)
{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
} else {
	depth = DEPTH_BATTLE.BULLET;
}

if (_existence_time != -1)
{
	if (_existence_time <= 0)
	{
		instance_destroy();
	} else {
		_existence_time = _existence_time - 1;
	}
}

var bone_body_width = sprite_get_height(spr_bullet_bone_body) - 4;
switch (_origin)
{
	case BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER:
		if (place_meeting(x, y, battle_soul))
		{
			var collision = true;
			switch (_type)
			{
				case BATTLE_BULLET_TYPE.NORMAL:
					var collision = true;
					break;
			
				case BATTLE_BULLET_TYPE.BLUE:
					if (floor(battle_soul.x) == floor(battle_soul.xprevious) && floor(battle_soul.y) == floor(battle_soul.yprevious))
					{
						collision = false;
					}
					break;
			
				case BATTLE_BULLET_TYPE.ORANGE:
					if (floor(battle_soul.x) != floor(battle_soul.xprevious) && floor(battle_soul.y) != floor(battle_soul.yprevious))
					{
						collision = false;
					}
					break;
			}
			if (collision)
			{
				Battle_CallSoulEventBulletCollision();
			}
		}
		break;
		
	case BATTLE_BULLET_BONE_ORIGIN.MIDDLE_CENTER:
		if (collision_rectangle(
			x + lengthdir_x(_length / 2, _direction) + lengthdir_x(bone_body_width / 2, _direction + 90),
			y + lengthdir_y(_length / 2, _direction) + lengthdir_y(bone_body_width / 2, _direction + 90),
			x + lengthdir_x(_length / 2, _direction - 180) + lengthdir_x(bone_body_width / 2, _direction + 90),
			y + lengthdir_y(_length / 2, _direction - 180) + lengthdir_y(bone_body_width / 2, _direction + 90),
			battle_soul, 0, 0) ||
			collision_rectangle(
			x + lengthdir_x(_length / 2, _direction) + lengthdir_x(bone_body_width / 2, _direction - 90),
			y + lengthdir_y(_length / 2, _direction) + lengthdir_y(bone_body_width / 2, _direction - 90),
			x + lengthdir_x(_length / 2, _direction - 180) + lengthdir_x(bone_body_width / 2, _direction - 90),
			y + lengthdir_y(_length / 2, _direction - 180) + lengthdir_y(bone_body_width / 2, _direction - 90),
			battle_soul, 0, 0))
		{
			var collision = true;
			switch (_type)
			{
				case BATTLE_BULLET_TYPE.NORMAL:
					var collision = true;
					break;
			
				case BATTLE_BULLET_TYPE.BLUE:
					if (floor(battle_soul.x) == floor(battle_soul.xprevious) && floor(battle_soul.y) == floor(battle_soul.yprevious))
					{
						collision = false;
					}
					break;
			
				case BATTLE_BULLET_TYPE.ORANGE:
					if (floor(battle_soul.x) != floor(battle_soul.xprevious) && floor(battle_soul.y) != floor(battle_soul.yprevious))
					{
						collision = false;
					}
					break;
			}
			if (collision)
			{
				Battle_CallSoulEventBulletCollision();
			}
		}
		break;
}

if (_rotate)
{
	_direction = _direction + _rotate_angle;
}