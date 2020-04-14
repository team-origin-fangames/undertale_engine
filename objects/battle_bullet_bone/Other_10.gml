///@desc Soul Collision
if (_karma_enabled)
{
	Player_HurtKarma();
}else
{
	Battle_CallSoulEventHurt();
	Player_Hurt(6);
}

event_inherited();