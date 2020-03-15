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

if (place_meeting(x, y, battle_soul))
{
	var collision = true;
	switch (_type)
	{
		case BULLET_TYPE.NORMAL:
			var collision = true;
			break;
			
		case BULLET_TYPE.BLUE:
			if (floor(battle_soul.x) == floor(battle_soul.xprevious) && floor(battle_soul.y) == floor(battle_soul.yprevious))
			{
				collision = false;
			}
			break;
			
		case BULLET_TYPE.ORANGE:
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