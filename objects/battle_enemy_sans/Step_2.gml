if (Player_IsKarmaEnabled())
{
	var player_karma = Player_GetKarma();
	var karma_timer = Player_GetKarmaTimer();

	if (karma_timer == 0)
	{
		Player_SetKarma(player_karma - 1);
		Player_SetKarmaTimer(- 1);
	}else if (karma_timer > 0)
	{
		Player_SetKarmaTimer(karma_timer - 1);
	}

	if (karma_timer == - 1)
	{
		if (player_karma >= 40)
		{
			Player_SetKarmaTimer(2);
		}else if (player_karma <= 39 && player_karma >= 30)
		{
			Player_SetKarmaTimer(4);
		}else if (player_karma <= 29 && player_karma >= 20)
		{
			Player_SetKarmaTimer(10);
		}else if (player_karma <=19 && player_karma >= 10)
		{
			Player_SetKarmaTimer(30);
		}else if (player_karma <= 9 && player_karma >= 1)
		{
			Player_SetKarmaTimer(60);
		}
	}
}