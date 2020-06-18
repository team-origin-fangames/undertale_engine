///@desc Menu End
switch (Battle_GetMenuChoiceButton())
{
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		_turn_number += 1;
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction())
		{
			case 0:
				Dialog_Add(Lang_LoadString("battle.inksans.act.check.dialog"));
		}
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		switch (Battle_GetMenuChoiceMercy())
		{
			case 0:
			
				break;
				
			case 1:
				Flag_Clear(FLAG_TYPE.STATIC);
				Flag_Clear(FLAG_TYPE.TEMP);
				Flag_Custom();
				Encounter_Start(1, 0, 0);
				break;
		}
		break;
}