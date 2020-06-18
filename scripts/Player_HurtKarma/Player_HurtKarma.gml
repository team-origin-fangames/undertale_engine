var player_karma = Player_GetKarma();
var hp = Player_GetHp();

if (hp > 1)
{
	Player_Hurt(2);
	
	if (player_karma < 40)
	{
		Player_SetKarma(player_karma + 1);
	}else
	{
		Player_SetKarma(40);
	}
}else
{
	if (player_karma > 0)
	{
		Player_SetKarma(player_karma - 1);
	}else
	{
		Player_SetHp(0);
	}
}

Player_SetKarmaTimer(- 1);

return true;