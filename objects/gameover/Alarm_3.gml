Flag_Clear(FLAG_TYPE.STATIC);
Flag_Custom();
switch (Player_GetTextTyperChoice())
{
	case 0:
		Encounter_Start(1);
		break;
		
	case 1:
		Demo_StartPlaying();
		Encounter_Start(1);
		break;
}