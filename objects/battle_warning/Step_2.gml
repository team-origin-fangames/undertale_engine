if (instance_exists(_target))
{
	x = _target.x + _target_offset_x;
	y = _target.y + _target_offset_y;
}

if (_time >= 0)
{
	_time = _time - 1;
}else
{
	instance_destroy();
}