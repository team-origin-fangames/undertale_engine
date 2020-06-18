/// @arg enable_bg

var enable_bg = argument[0];

if (enable_bg)
{
	if (Player_IsInBattle() && !instance_exists(battle_bg))
	{
	instance_create_depth(0, 0, 0, battle_bg);
	}
}
else
{
	if (instance_exists(battle_bg))
	{
	instance_destroy(battle_bg);
	}
}

return true;