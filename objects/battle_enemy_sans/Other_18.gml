///@desc Turn Preparation Start
switch (_fight_state)
{
	case FIGHT_STATE.NORMAL:
		// TODO: Intro
		if (_turn < ds_list_size(_turn_list))
		{
			instance_create_depth(0, 0, 0, _turn_list[|_turn]);
		}
		break;
		
	case FIGHT_STATE.SPARED:
		// TODO: Spared
		break;
}