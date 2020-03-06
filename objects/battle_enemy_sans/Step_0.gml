// Handle State Machine
switch (state)
{
	case SANS_STATE.STATIC:
	break;
	
	case SANS_STATE.IDLE:
	break;
	
	case SANS_STATE.LEFT:
	break;
	
	case SANS_STATE.RIGHT:
	break;
	
	case SANS_STATE.UP:
	break;
	
	case SANS_STATE.DOWN:
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

//Handle Character Swings
if (_swing)
{
	_swing_sine = _swing_sine + 1;
	_head_y = sin(_swing_sine);
	_body_y = sin(_swing_sine);
}else{
	_swing_sine = 0;
}

//Handle Variables Display
if (keyboard_check_pressed(ord("T")))
{
	if (_test)
	{
		_test = false;
	}else{
		_test = true;
	}
}
	
	
	
	
	
	
	
	
	