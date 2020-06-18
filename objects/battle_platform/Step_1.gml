image_xscale = width / 2;
image_angle = angle;
switch (type)
{
	case BATTLE_PLATFORM_TYPE.GREEN:
		sprite_index = spr_battle_platform_green;
		break;
		
	case BATTLE_PLATFORM_TYPE.PURPLE:
		sprite_index = spr_battle_platform_purple;
		break;
}

if (!bounce_x)
{
	x = x + speed_x;
}
else
{
	repeat (abs(speed_x) * 10)
	{
		if (!place_meeting(x + sign(speed_x) * 0.1, y, block))
		{
			x = x + sign(speed_x) * 0.1;
		}
		else
		{
			speed_x = -speed_x;
			break;
		}
	}
}
y = y + speed_y;

if (outside)
{
	depth = DEPTH_BATTLE.BULLET_OUTSIDE_LOW;
}
else 
{
	depth = DEPTH_BATTLE.BULLET;
}

if (Battle_GetState() != BATTLE_STATE.IN_TURN)
{
	instance_destroy();
}