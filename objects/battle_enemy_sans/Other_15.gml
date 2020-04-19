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
				switch (Sans_GetPhase())
				{
					case 0:
						if (Flag_Get(FLAG_TYPE.DYNAMIC, FLAG_DYNAMIC.SANS_MISS))
						{
							Dialog_Add(Lang_GetString("battle.sans.act.check.dialog.1"));
						}else
						{
							if (_fight_state = FIGHT_STATE.SPARE)
							{
								Dialog_Add(Lang_GetString("battle.sans.act.check.dialog.2"));
							}else
							{
								Dialog_Add(Lang_GetString("battle.sans.act.check.dialog.0"));
							}
						}
						break;
							
					case 1:
						Dialog_Add(Lang_GetString("battle.sans.act.check.dialog.3"));
						break;
				}
				break;
				
			case 1:
				Dialog_Add("* You threw a coin at him.{pause}{clear}* He looked at the coin excitedly,{sleep 10}&  but then stared at you&  viciously again.");
				break;
				
			case 2:
				break;
				
			case 3:
				break;
		}
		break;

	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		break;
}