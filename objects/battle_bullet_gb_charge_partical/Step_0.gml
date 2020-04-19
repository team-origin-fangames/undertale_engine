if (image_alpha <= 0.1)
{
	instance_destroy()
}

if (_timer >= 1)
{
	image_alpha = image_alpha - 0.1;
	image_xscale = image_xscale - 0.05;
	image_yscale = image_xscale;
	_timer = 0;
}
_timer = _timer + 0.5;

if (instance_exists(_controller_id))
{
	direction = point_direction(x, y, _controller_id.x, _controller_id.y);
	gravity_direction = point_direction(x, y, _controller_id.x, _controller_id.y);
}