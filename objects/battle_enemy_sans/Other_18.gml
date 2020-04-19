///@desc Turn Preparation Start
switch (_fight_state)
{
	case FIGHT_STATE.NORMAL:
		// TODO: Intro
		if (_dialog_enemy && _dialog_enemy_text < ds_list_size(_dialog_enemy_text_list))
		{
			Dialog_Enemy_Create(x + 100, y - 150, _dialog_enemy_text_list[|_dialog_enemy_text], 0);
		}
		if (_turn < ds_list_size(_turn_list))
		{
			instance_create_depth(0, 0, 0, _turn_list[|_turn]);
		}
		break;
		
	case FIGHT_STATE.SPARE:
		// TODO: Spared
		break;
}