image_yscale = sin(_change_sine / 15) + 2;
_change_sine = _change_sine + pi / 4;

if (_timer == 1)
{
	part_particles_create_color(_partical_system, irandom_range(0, 640), 0, _partical, c_white, 1);
	_timer = 0;
}
_timer = _timer + 0.05;