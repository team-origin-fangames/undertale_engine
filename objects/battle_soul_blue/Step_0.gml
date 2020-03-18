event_inherited();

switch (_direction)
{
	case DIR.UP:
		image_angle = 180;
		break;
		
	case DIR.DOWN:
		image_angle = 0;
		break;
		
	case DIR.LEFT:
		image_angle = -90;
		break;
		
	case DIR.RIGHT:
		image_angle = 90;
		break;
}

if (Battle_GetState() == BATTLE_STATE.IN_TURN && _moveable)
{
	var player_total_speed = Player_GetSpdTotal();
	if (Input_IsHeld(INPUT.CANCEL))
	{
		player_total_speed = player_total_speed / 2;
	}
	var player_speed = player_total_speed;
	switch (_direction)
	{
		case DIR.UP:
		case DIR.DOWN:
			if  (Input_IsHeld(INPUT.LEFT) && !position_meeting(x - 1, y, block))
			{
				if (player_speed < _max_speed)
				{
					player_speed = player_speed + _acceleration;
				}
				x = x - player_speed;
			}
			if  (Input_IsHeld(INPUT.RIGHT) && !position_meeting(x + 1, y, block))
			{
				if (player_speed < _max_speed)
				{
					player_speed = player_speed + _acceleration;
				}
				x = x + player_speed;
			}
			if (!Input_IsHeld(INPUT.LEFT) && !Input_IsHeld(INPUT.RIGHT))
			{
				if (player_speed - _friction >= player_total_speed)
				{
					player_speed = player_speed - _friction;
				}
			}
			break;
			
		case DIR.LEFT:
		case DIR.RIGHT:
			if  (Input_IsHeld(INPUT.UP) && !position_meeting(x, y - 1, block))
			{
				if (player_speed < _max_speed)
				{
					player_speed = player_speed + _acceleration;
				}
				y = y - player_speed;
			}
			if  (Input_IsHeld(INPUT.DOWN) && !position_meeting(x, y + 1, block))
			{
				if (player_speed < _max_speed)
				{
					player_speed = player_speed + _acceleration;
				}
				y = y + player_speed;
			}
			if (!Input_IsHeld(INPUT.UP) && !Input_IsHeld(INPUT.DOWN))
			{
				if (player_speed - _friction >= player_total_speed)
				{
					player_speed = player_speed - _friction;
				}
			}
			break;
	}
}

