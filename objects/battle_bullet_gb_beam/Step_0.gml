if (place_meeting(x, y, battle_soul))
{
	var collision = true;
	switch (type)
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