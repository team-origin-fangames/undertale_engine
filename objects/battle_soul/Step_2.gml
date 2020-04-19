if (Player_IsKarmaEnabled())
{
	if(Player_GetHp() + Player_GetKarma() <= 0)
	{
	Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.GAMEOVER_SOUL_X, x - camera.x);
	Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.GAMEOVER_SOUL_Y, y - camera.y);
	room_goto(room_gameover);
	}
}else
{
	if(Player_GetHp() <= 0)
	{
		Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.GAMEOVER_SOUL_X, x - camera.x);
		Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.GAMEOVER_SOUL_Y, y - camera.y);
		room_goto(room_gameover);
	}
}