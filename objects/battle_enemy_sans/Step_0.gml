 // Handle State Machine
switch (_state)
{
	case SANS_STATE.STATIC:
		if (_state_step != 1)
		{
			_head_x = 0;
			_head_y = 0;
			face_enemy_sans.emotion = 0;
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
			_head_x = 0;
			_head_y = 0;
			face_enemy_sans.emotion = 0;
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
					_head_x = 0;
					_head_y = 0;
					face_enemy_sans.emotion = 0;
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
					_head_x = 0;
					_head_y = 0;
					face_enemy_sans.emotion = 0;
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
					_head_x = 0;
					_head_y = 0;
					face_enemy_sans.emotion = 0;
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
		
	case SANS_STATE.ATTACK:
	// TODO
		break;
}

// Handle Body Animation Loop
var body_number = sprite_get_number(_body_sprite);
_body_image = body_number * _swing_sine / 60;

//Handle Character Swings
if (_swing)
{
	_swing_sine = _swing_sine + 1;
	_head_y = sin(_swing_sine / 60 * pi * 2) * 0.5;
	_body_y = sin(_swing_sine / 60 * pi * 2) * 1.5;
	_tail_y = sin(_swing_sine / 60 * pi * 2) * 0.5;
	_tail_angel = sin(_swing_sine / 60 * pi * 2) * 5;
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
	face_enemy_sans.emotion = 0;
	alarm[0] = -1;
	alarm[1] = -1;
	alarm[2] = -1;
}

// Always Stand on Board
if (_on_board)
{
	y = battle_board.y - battle_board.up - battle_board.thickness_frame - 4;
}

//Handle Emotion
_head_image = face_enemy_sans.emotion;