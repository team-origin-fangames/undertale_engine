if (shadow)
{
	shader_set(shd_shadow);
	shader_set_uniform_f(uniform_value, shadow_value);
}

draw_self();

if (shadow)
{
	shader_reset();
}
