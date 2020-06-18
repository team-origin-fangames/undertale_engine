switch (state)
{
	case INKSANS_STATE.STATIC:
	
		break;
		
	case INKSANS_STATE.IDLE:
	
		break;
}

if (_swing)
{
	_swing_sine += 1;
	_head_y = sin(_swing_sine / 60 * pi * 2) * 0.5;
	_head_angle = sin(_swing_sine / 60 * pi * 2) * -1;
	_body_y = sin(_swing_sine / 60 * pi * 2) * 1.5;
	_arm_left_angle = sin(_swing_sine / 60 * pi * 2) * -2;
	_arm_right_angle = sin(_swing_sine / 60 * pi * 2) * 2.5;
	_leg_left_angle = sin(_swing_sine / 60 * pi * 2) * 1.5;
	_leg_right_angle = sin(_swing_sine / 60 * pi * 2) * -3;
	_scarf_left_transform = sin(_swing_sine / 60 * pi * 2) * 8;
	_scarf_right_transform = sin(_swing_sine / 60 * pi * 2) * 5;
}
else
{
	_swing_sine = 0;
}
	
if (always_on_board)
{
	y = battle_board.y - battle_board.up - battle_board.thickness_frame - 4;
}

_head_image = face_enemy_inksans.emotion;