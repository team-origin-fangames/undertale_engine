if (_shockwave_enabled)
{
	shader_set(shd_shockwave);
	_time = _time + _speed;
    shader_set_uniform_f(_uni_time, _time);
    shader_set_uniform_f(_uni_position, _position_x, _position_y);
    shader_set_uniform_f(_uni_resolution, _resolution_x, _resolution_y);
    shader_set_uniform_f(_uni_shock_amplitude, _shock_amplitude);
    shader_set_uniform_f(_uni_shock_refraction, _shock_refraction );
    shader_set_uniform_f(_uni_shock_width, _shock_width);
	draw_surface(_surface, 0, 0);
	shader_reset();
}