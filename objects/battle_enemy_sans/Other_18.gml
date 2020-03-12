///@desc Turn Preparation Start
switch (_fight_state)
{
	// TODO: Intro
	case FIGHT_STATE.NORMAL:
		if (_turn < ds_list_size(_turn_list))
		{
			instance_create_depth(0, 0, 0, _turn_list[|_turn]);
		}
		break;
		
	case FIGHT_STATE.SPARED:
		// TODO
		break;
}