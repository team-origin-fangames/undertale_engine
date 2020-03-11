///@desc Menu End
switch (Battle_GetMenuChoiceButton())
{
	case BATTLE_MENU_CHOICE_BUTTON.FIGHT:
		break;
		
	case BATTLE_MENU_CHOICE_BUTTON.ACT:
		switch (Battle_GetMenuChoiceAction())
		{
			case 0:
				Dialog_Add("* Gaster Blaster!Sans - ATK 10 DEF 10&*  The dragon of bones.&* Has powerful energy in his body.");
				break;
				
			case 1:
				Dialog_Add("* You threw a coin at him.&* He looked at the coin excitedly,&  but then stared at you viciously again.");
				break;
		}
		break;

	case BATTLE_MENU_CHOICE_BUTTON.MERCY:
		break;
}