 // Handle State Machine
switch (state)
{
	case SANS_STATE.STATIC:
		if (_state_step != 1)
		{
			_head_sprite = spr_enemy_sans_head_blink;
			_head_x = 0;
			_head_y = 0;
			_head_image = 0;
			_head_blink = false;
			_body_sprite = spr_enemy_sans_body_swing;
			_body_x = 0;
			_body_y = 0;
			_body_image = 0;
			_body_speed = 0;
			_body_loop = true;
			_tail_x = 0;
			_tail_y = 0;
			_tail_angel = 0;
			_swing = false;
			_state_step = 1;
		}
		break;

	case SANS_STATE.IDLE:
		if (_state_step != 1)
		{
			_head_sprite = spr_enemy_sans_head_blink;
			_head_x = 0;
			_head_y = 0;
			_head_image = 0;
			_head_blink = true;
			_body_sprite = spr_enemy_sans_body_swing;
			_body_x = 0;
			_body_y = 0;
			_body_image = 0;
			_body_speed = 0.06;
			_body_loop = true;
			_swing = true;
			_state_step = 1;
		}
		break;

	case SANS_STATE.LEFT:
		if (_state_step <= 4)
		{
			switch (_state_step)
			{
				case 0:
					_head_sprite = spr_enemy_sans_head_blink;
					_head_x = 0;
					_head_y = 0;
					_head_image = 0;
					_head_blink = false;
					_body_sprite = spr_enemy_sans_body_left;
					_body_x = 0;
					_body_y = 0;
					_body_image = 0;
					_body_speed = 0;
					_body_loop = false;
					_swing = false;
					break;

				case 1:
					_body_x = 3;
					_tail_x = 3;
					_tail_angel = -1;
					break;

				case 2:
					_body_x = 4;
					_tail_x = 4;
					_tail_angel = -2;
					break;

				case 3:
					_body_x = -1;
					_tail_x = 1;
					_tail_angel = 1;
					_body_speed = 0.25;
					break;

				case 4:
					_body_x = 0;
					_tail_x = 0;
					_tail_angel = -1;
					_body_speed = 0.15;
					break;
			}
			_state_step += 0.25;
		}
		break;
	
	case SANS_STATE.RIGHT:
		if (_state_step <= 4)
		{
			switch (_state_step)
			{
				case 0:
					_head_sprite = spr_enemy_sans_head_blink;
					_head_x = 0;
					_head_y = 0;
					_head_image = 0;
					_head_blink = false;
					_body_sprite = spr_enemy_sans_body_right;
					_body_x = 0;
					_body_y = 0;
					_body_image = 0;
					_body_speed = 0;
					_body_loop = false;
					_swing = false;
					break;

				case 1:
					_body_x = -3;
					_tail_x = -3;
					_tail_angel = -1;
					break;

				case 2:
					_body_x = -4;
					_tail_x = -4;
					_tail_angel = -2;
					break;

				case 3:
					_body_x = 1;
					_tail_x = 1;
					_tail_angel = 1;
					_body_speed = 0.25;
					break;

				case 4:
					_body_x = 0;
					_tail_x = 0;
					_tail_angel = -1;
					_body_speed = 0.15;
					break;
			}
			_state_step += 0.25;
		}
		break;
	
	case SANS_STATE.UP:
		if (_state_step <= 4)
		{
			switch (_state_step)
			{
				case 0:
					_head_sprite = spr_enemy_sans_head_blink;
					_head_x = 0;
					_head_y = 0;
					_head_image = 0;
					_head_blink = false;
					_body_sprite = spr_enemy_sans_body_up;
					_body_x = 0;
					_body_y = 0;
					_body_image = 0;
					_body_speed = 0;
					_body_loop = false;
					_swing = false;
					break;

				case 1:
					_body_y = 3;
					_tail_y = 3;
					_tail_angel = 1;
					break;

				case 2:
					_head_y = 1;
					_body_y = 4;
					_tail_y = 4;
					_tail_angel = 2;
					break;

				case 3:
					_head_y = -1;
					_body_y = -1;
					_tail_y = -1;
					_tail_angel = -1;
					_body_speed = 0.2;
					break;

				case 4:
					_head_y = 0;
					_body_y = 0;
					_tail_y = 0;
					_tail_angel = 1;
					_body_speed = 0.15;
					break;
			}
			_state_step += 0.2;
		}
		break;
	
	case SANS_STATE.DOWN:
		if (_state_step <= 4)
		{
			switch (_state_step)
			{
				case 0:
					_head_sprite = spr_enemy_sans_head_blink;
					_head_x = 0;
					_head_y = 0;
					_head_image = 0;
					_head_blink = false;
					_body_sprite = spr_enemy_sans_body_down;
					_body_x = 0;
					_body_y = 0;
					_body_image = 0;
					_body_speed = 0;
					_body_loop = false;
					_swing = false;
					break;

				case 1:
					_body_y = -3;
					_tail_y = -3;
					_tail_angel = -1;
					break;

				case 2:
					_head_y = -1;
					_body_y = -4;
					_tail_y = -4;
					_tail_angel = -2;
					break;

				case 3:
					_head_y = 1;
					_body_y = 1;
					_tail_y = 1;
					_tail_angel = 1;
					_body_speed = 0.2;
					break;

				case 4:
					_head_y = 0;
					_body_y = 0;
					_tail_y = 0;
					_tail_angel = -1;
					_body_speed = 0.15;
					break;
			}
			_state_step += 0.2;
		}
		break;
		
	case SANS_STATE.MISS:
		if (_state_step != 1)
		{
			_head_sprite = spr_enemy_sans_head_blink;
			_head_x = 0;
			_head_y = 0;
			_head_image = 1;
			_head_blink = false;
			_body_sprite = spr_enemy_sans_body_miss;
			_body_x = 0;
			_body_y = 0;
			_body_image = 0;
			_body_speed = 0;
			_body_loop = true;
			_tail_x = 0;
			_tail_y = 0;
			_tail_angel = 0;
			_swing = false;
			_state_step = 1;
		}
		break;
		
	case SANS_STATE.ATTACK:
		break;
}

// Handle Body Animation Loop
var body_number = sprite_get_number(_body_sprite);
_body_image = _body_image + _body_speed;
if (_body_image >= body_number)
{
	if (_body_loop) 
	{
		_body_image = 0;
	}else{
		_body_image = body_number - 1;
		_body_speed = 0;
	}
}

//Handle Legs Animation
/*var legs_number = sprite_get_number(spr_enemy_sans_legs);
_legs_image = _legs_image + _legs_speed;
if (_legs_image >= legs_number) _legs_image = 0;*/

//Handle Character Swings
if (_swing)
{
	_swing_sine = _swing_sine + 1;
	_head_y = sin(_swing_sine * 0.1) * 0.5;
	_body_y = sin(_swing_sine * 0.1) * 1.5;
	_tail_y = sin(_swing_sine * 0.1) * 0.5;
	_tail_angel = sin(_swing_sine * 0.1) * 5;
}else{
	_swing_sine = 0;
}

// Handle Eyes Blink
if (_head_blink && _blink_not_started)
{
	_blink_not_started = false;
	alarm[0] = 1;
}
if (!_head_blink)
{
	_blink_not_started = true;
	_head_image = 0;
	alarm[0] = -1;
	alarm[1] = -1;
	alarm[2] = -1;
}

//Handle Test Functions
if (keyboard_check_pressed(ord("T")))
{
	if (_test)
	{
		_test = false;
	}else{
		_test = true;
	}
}

if (_test) 
{
	if (keyboard_check_pressed(ord("1")))
	{
		Sans_SetState(SANS_STATE.STATIC);
	}

	if (keyboard_check_pressed(ord("2")))
	{
		Sans_SetState(SANS_STATE.IDLE);
	}

	if (keyboard_check_pressed(ord("3")))
	{
		Sans_SetState(SANS_STATE.LEFT);
	}

	if (keyboard_check_pressed(ord("4")))
	{
		Sans_SetState(SANS_STATE.RIGHT);
	}

	if (keyboard_check_pressed(ord("5")))
	{
		Sans_SetState(SANS_STATE.UP);
	}

	if (keyboard_check_pressed(ord("6")))
	{
		Sans_SetState(SANS_STATE.DOWN);
	}

	if (keyboard_check_pressed(ord("7")))
	{
		Sans_SetState(SANS_STATE.MISS);
	}
}

	
	
	
	
	
	
	
	