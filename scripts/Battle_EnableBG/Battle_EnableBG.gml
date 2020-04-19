if (Player_IsInBattle() && !instance_exists(battle_bg))
{
	instance_create_depth(0, 0, 0, battle_bg);
}

return true;