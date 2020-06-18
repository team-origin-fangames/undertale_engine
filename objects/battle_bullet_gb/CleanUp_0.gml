if (instance_exists(_beam))
{
	instance_destroy(_beam);
}

if(!instance_exists(battle_bullet_gb))
{
	gamepad_set_vibration(0, 0, 0);
}