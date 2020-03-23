var hit = Player_GetHit();

if (hit <= 1)
{
	Battle_SetDifficulty(BATTLE_DIFFICULTY.HARD);
}

if (hit > 1 && hit <= 4)
{ 
	Battle_SetDifficulty(BATTLE_DIFFICULTY.NORMAL);
}

if (hit > 4)
{
	Battle_SetDifficulty(BATTLE_DIFFICULTY.EASY);
}

Player_SetHit(0);
return true;