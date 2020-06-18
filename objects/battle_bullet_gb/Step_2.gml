_beam.type = type;
_beam.x = x + lengthdir_x(scale_y * 8, image_angle);
_beam.y = y + lengthdir_y(scale_y * 8, image_angle);
_beam.image_angle = image_angle;
_beam._karma_enabled = _karma_enabled;

if (_beam_scale > 1.2 && _beam_alpha > 0.8)
{
	_beam.image_xscale = scale_y * _beam_collision_scale * 999;
	_beam.image_yscale = scale_y * _beam_collision_scale;
} else {
	_beam.image_xscale = 0;
	_beam.image_yscale = 0;
}