_inst_list=ds_list_create();

if (Player_GetHit() != 0)
{
	Battle_UpdateDifficulty();
	_difficulty = Battle_GetDifficulty();
}else
{
	_difficulty = BATTLE_DIFFICULTY.NORMAL;
}