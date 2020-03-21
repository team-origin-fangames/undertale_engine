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
	var bottom_center_x_predicted = 0;
	var bottom_center_y_predicted = 0;
	switch (_direction)
	{
		case DIR.UP:
			bottom_center_y_predicted = - sprite_height / 2 - 0.1;
			break;

		case DIR.DOWN:
			bottom_center_y_predicted = sprite_height / 2 + 0.1;
			break;

		case DIR.LEFT:
			bottom_center_x_predicted = - sprite_width / 2 - 0.1;
			break;

		case DIR.RIGHT:
			bottom_center_x_predicted = sprite_width / 2 + 0.1;
			break;

	}

	var block_collision_predicted = position_meeting(x + bottom_center_x_predicted, y + bottom_center_y_predicted, block);
	var platform_collision_predicted = position_meeting(x + bottom_center_x_predicted, y + bottom_center_y_predicted, battle_platform);
	
    var  jump_key = -1;
    switch (_direction)
    {
        case DIR.UP:
        	jump_key = INPUT.DOWN;
	    	break;

	    case DIR.DOWN:
	    	jump_key = INPUT.UP;
	    	break;

	    case DIR.LEFT:
	    	jump_key = INPUT.RIGHT;
	    	break;

	    case DIR.RIGHT:
	    	jump_key = INPUT.LEFT;
	    	break;
    }
	
    if ((block_collision_predicted || platform_collision_predicted) && _move >= 0)
    {
        var bottom_center_x = 0;
        var bottom_center_y = 0;

        switch (_direction)
        {
            case DIR.UP:
                bottom_center_y = - sprite_height / 2
		        break;

	        case DIR.DOWN:
		        bottom_center_y = sprite_height / 2;
		        break;

	        case DIR.LEFT:
		        bottom_center_x = - sprite_width / 2;
		        break;

	        case DIR.RIGHT:
		        bottom_center_x = sprite_width / 2;
				break;
        }

        while (position_meeting(x + bottom_center_x, y + bottom_center_y, block) || position_meeting(x + bottom_center_x, y + bottom_center_y, battle_platform))
        {
            var correction_x = 0;
            var correction_y = 0;
            switch (_direction)
            {
                case DIR.UP:
                    correction_y = 0.1;
		            break;

	            case DIR.DOWN:
		            correction_y = - 0.1;
		            break;

	            case DIR.LEFT:
		            correction_x = 0.1;
		            break;

	            case DIR.RIGHT:
		            correction_x = - 0.1;
					break;
            }

            x = x + correction_x;
            y = y + correction_y;
        }

        if(block_collision_predicted || platform_collision_predicted)
        {
            _move = 0;

            if (_impact)
            {
                _impact = false;
                audio_play_sound(snd_impact, 0, false);
				Camera_Shake(8, 8, 1, 1, true, true);
            }
			
            if (platform_collision_predicted)
            {
                var platform_x_predicted = 0;
                var platform_y_predicted = 0;
                switch (_direction)
                {
                    case DIR.UP:
                        platform_y_predicted = - sprite_height / 2 - 1;
		                break;

	                case DIR.DOWN:
		                platform_y_predicted = sprite_height / 2 + 1;
		                break;

	                case DIR.LEFT:
		                platform_x_predicted = - sprite_width / 2 - 1;
		                break;

	                case DIR.RIGHT:
		                platform_x_predicted = sprite_width / 2 + 1;
		                break;
                }

				var inst = instance_position(x + platform_x_predicted, y + platform_y_predicted, battle_platform);
				if(instance_exists(inst) && inst._type == BATTLE_PLATFORM_TYPE.GREEN)
				{
					x = x + inst.x - inst.xprevious;
				}
            }
        }
    }
	
	if (_move >= 0){
		if(Input_IsHeld(jump_key))
		{
			_move = - _speed_jump;
		}
	}
	
	if (_move < 0)
	{
		_move = _move + _gravity_jump;

		if (!Input_IsHeld(jump_key))
		{
			_move = 0;
		}
		
		if(Input_IsHeld(jump_key))
		{
			_move = - _speed_jump;
		}
	}
	
	if (_move >= 0 && _move < _gravity_fall_max)
	{
		_move = _move + _gravity_fall;
		
		if(Input_IsHeld(jump_key))
		{
			_move = - _speed_jump;
		}
	}

	repeat (abs(_move) * 10)
	{
		var can_move = 0;
		var bottom_center_x_move_predicted = 0;
		var bottom_center_y_move_predicted = 0;

		switch (_direction)
        {
            case DIR.UP:
                bottom_center_y_move_predicted = - (sprite_height / 2) * sign(_move);
		        break;

	        case DIR.DOWN:
		        bottom_center_y_move_predicted = (sprite_height / 2) * sign(_move);
		        break;

	        case DIR.LEFT:
		        bottom_center_x_move_predicted = - (sprite_width / 2) * sign(_move);
		        break;

	        case DIR.RIGHT:
		    	bottom_center_x_move_predicted = (sprite_width / 2) * sign(_move);
		        break;
        }

		if (!position_meeting(x + bottom_center_x_move_predicted, y + bottom_center_y_move_predicted, block))
		{
			can_move = !((_move > 0) && position_meeting(x + bottom_center_x_move_predicted, y + bottom_center_x_move_predicted, battle_platform));
		} else
		{
			can_move = false;
		}

		if (can_move)
		{
			var move_x = 0;
			var move_y = 0;
			switch (_direction)
        	{
        	    case DIR.UP:
        	        move_y = - 0.1 * sign(_move);
			        break;

	    	    case DIR.DOWN:
			        move_y = 0.1 * sign(_move);
			        break;

	    	    case DIR.LEFT:
			        move_x = - 0.1 * sign(_move);
			        break;

	    	    case DIR.RIGHT:
			    	move_x = 0.1 * sign(_move);
			        break;
        	}
			x = x + move_x;
			y = y + move_y;
		}
	}
}