///@desc Menu End
switch (Battle_GetMenuChoiceButton())
{
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		if (_fight_state == FIGHT_STATE.PAUSED)
		{
			_fight_state = FIGHT_STATE.NORMAL;
			_turn = _turn + 1;
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction())
		{
			case 0:
				Dialog_Add("* GB!Sans - ATK 10 DEF 10{sleep 10}&* The dragon of bones.{sleep 10}&* Has powerful energy in his body.");
				break;
				
			case 1:
				Dialog_Add("* You threw a coin at him.{pause}{clear}* He looked at the coin excitedly,{sleep 10}&  but then stared at you&  viciously again.");
				break;
		}
		break;

	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		switch (Battle_GetMenuChoiceMercy())
		{
			case 0:
				if (_fight_state == FIGHT_STATE.PAUSED)
				{
					_fight_state = FIGHT_STATE.SPARED;
				}
				break;
		}
		break;
}