if (Player_IsInBattle() && instance_exists(battle_bg))
{
	instance_destroy(battle_bg);
}

return true;