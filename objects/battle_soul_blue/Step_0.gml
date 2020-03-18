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
	var player_speed = Player_GetSpdTotal();
	if (Input_IsHeld(INPUT.CANCEL))
	{
		player_speed = player_speed / 2;
	}

	switch (_direction)
	{
		case DIR.UP:
		case DIR.DOWN:
		repeat (player_speed * 10)
		{
			if (Input_IsHeld(INPUT.LEFT) && !position_meeting(x - sprite_width / 2, y, block))
			{
				x = x - 0.1;
			}
			
			if (Input_IsHeld(INPUT.RIGHT) && !position_meeting(x + sprite_width / 2, y, block))
			{
				x = x + 0.1;
			}
		}
		break;
		
		case DIR.LEFT:
		case DIR.RIGHT:
		repeat (player_speed * 10)
		{
			if (Input_IsHeld(INPUT.UP) && !position_meeting(x, y - sprite_height / 2, block))
			{
				y = y - 0.1;
			}
			if (Input_IsHeld(INPUT.DOWN) && !position_meeting(x, y + sprite_width / 2, block))
			{
				y = y + 0.1;
			}
		}
		break;
	}
}

