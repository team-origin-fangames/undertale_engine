event_inherited();

//根据朝向改变图像角度
switch (dir)
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

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable)
{
    //获取当前总速度
	var player_speed = Player_GetSpdTotal();
	if (Input_IsHeld(INPUT.CANCEL))
    {
        var player_speed = player_speed / 2;
    }

    //应用移动
	repeat (player_speed * 10)
    {
        switch (dir)
        {
            case DIR.UP:
            case DIR.DOWN:
            	if (Input_IsHeld(INPUT.LEFT) && !position_meeting(x - sprite_width / 2, y, block))
            	{
                	x = x - 0.1;
            	}
            	if (Input_IsHeld(INPUT.RIGHT) && !position_meeting(x + sprite_width / 2, y, block))
            	{
                	x = x + 0.1;
            	}
            	break;

            case DIR.LEFT:
            case DIR.RIGHT:
            	if (Input_IsHeld(INPUT.UP) && !position_meeting(x, y - sprite_height / 2, block))
            	{
            	    y = y - 0.1;
            	}
            	if (Input_IsHeld(INPUT.DOWN) && !position_meeting(x, y + sprite_height / 2, block))
            	{
            	    y = y + 0.1;
            	}
            	break;
        }
	}

	//根据朝向确定需要判定的底部中点 + 0.1
	var bottom_center_x_predicted = 0;
	var bottom_center_y_predicted = 0;
	switch (dir)
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

    //判定该点是否与block或battle_platform碰撞
	var block_collision_predicted = position_meeting(x + bottom_center_x_predicted, y + bottom_center_y_predicted, block);
	var platform_collision_predicted = position_meeting(x + bottom_center_x_predicted, y + bottom_center_y_predicted, battle_platform);
	
    //根据朝向设定跳跃输入
    var  jump_key = -1;
    switch (dir)
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
	
	//落地碰撞纠正
    if ((block_collision_predicted || platform_collision_predicted) && move >= 0)
    {
        var bottom_center_x = 0;
        var bottom_center_y = 0;

        switch (dir)
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
            switch (dir)
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
            move = 0;

            if (impact)
            {
                impact = false;
                audio_play_sound(snd_impact, 0, false);
				Camera_Shake(8, 8, 1, 1, true, true);
            }
			
			//板子判定与处理黏性
            if (platform_collision_predicted)
            {
                var platform_x_predicted = 0;
                var platform_y_predicted = 0;
                switch (dir)
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
				if(instance_exists(inst) && inst.sticky)
				{
					x = x + inst.x - inst.xprevious;
				}
            }

			if(Input_IsHeld(jump_key))
			{
				move = -_speed_jump;
			}
        }
    }else if (move < 0)
	{
		move = move + _gravity_jump;

		if (!Input_IsHeld(jump_key))
		{
			move = 0;
		}
	}else if (move < 0.05)
	{
		move = move + 0.01;
	}else if (move < _gravity_fall_max)
	{
		move = move + _gravity_fall;
	}

	repeat (abs(move) * 10)
	{
		var can_move = 0;
		var bottom_center_x_move_predicted = 0;
		var bottom_center_y_move_predicted = 0;

		switch (dir)
        {
            case DIR.UP:
                bottom_center_y_move_predicted = - (sprite_height / 2) * sign(move);
		        break;

	        case DIR.DOWN:
		        bottom_center_y_move_predicted = (sprite_height / 2) * sign(move);
		        break;

	        case DIR.LEFT:
		        bottom_center_x_move_predicted = - (sprite_width / 2) * sign(move);
		        break;

	        case DIR.RIGHT:
		    	bottom_center_x_move_predicted = (sprite_width / 2) * sign(move);
		        break;
        }

		if (!position_meeting(x + bottom_center_x_move_predicted, y + bottom_center_y_move_predicted, block))
		{
			can_move = !((move > 0) && position_meeting(x + bottom_center_x_move_predicted, y + bottom_center_x_move_predicted, battle_platform));
		} else
		{
			can_move = false;
		}

		if (can_move)
		{
			var move_x = 0;
			var move_y = 0;
			switch (dir)
        	{
        	    case DIR.UP:
        	        move_y = - 0.1 * sign(move);
			        break;

	    	    case DIR.DOWN:
			        move_y = 0.1 * sign(move);
			        break;

	    	    case DIR.LEFT:
			        move_x = - 0.1 * sign(move);
			        break;

	    	    case DIR.RIGHT:
			    	move_x = 0.1 * sign(move);
			        break;
        	}
			x = x + move_x;
			y = y + move_y;
		}
	}
}