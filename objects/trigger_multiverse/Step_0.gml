event_inherited();

if (_ready_first && !instance_exists(ui_dialog))
{
	_ready_first = false;
	alarm[4] = 5;
}

if (_ready_subsequent && !instance_exists(ui_dialog))
{
	_ready_subsequent = false;
	alarm[7] = 15;
}