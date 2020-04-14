_inst._type = _type;
_inst.x = x + lengthdir_x(_scale_y * 8, image_angle);
_inst.y = y + lengthdir_y(_scale_y * 8, image_angle);
_inst.image_angle = image_angle;
_inst._karma_enabled = _karma_enabled;

if (_beam_scale > 1.2 && _beam_alpha > 0.8)
{
	_inst.image_xscale = _scale_y * _beam_collision_scale * 999;
	_inst.image_yscale = _scale_y * _beam_collision_scale;
} else {
	_inst.image_xscale = 0;
	_inst.image_yscale = 0;
}