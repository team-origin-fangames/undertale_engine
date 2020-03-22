_uni_time = shader_get_uniform(shd_shockwave,"time");
_time = 0;
_speed = 0.015;

_uni_position = shader_get_uniform(shd_shockwave,"position");
_position_x = x;
_position_y = y;

_uni_resolution = shader_get_uniform(shd_shockwave,"resolution");
_resolution_x = camera_get_view_width(0);
_resolution_y = camera_get_view_height(0);

_uni_shock_amplitude = shader_get_uniform(shd_shockwave,"shock_amplitude");
_shock_amplitude = 15;

_uni_shock_refraction = shader_get_uniform(shd_shockwave,"shock_refraction");
_shock_refraction = 0.5;

_uni_shock_width = shader_get_uniform(shd_shockwave,"shock_width");
_shock_width = 0.1;

_surface = surface_create(camera_get_view_width(0), camera_get_view_height(0));
view_set_surface_id(0, _surface);

 _shockwave_enabled = true;
 alarm[0] = 280;