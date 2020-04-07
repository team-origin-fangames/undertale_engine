if (_timer == 1)
{
	part_particles_create_color(_partical_system, irandom_range(0, 1100), 0, _partical, c_white, 1);
	_timer = 0;
}
_timer = _timer + 0.05;