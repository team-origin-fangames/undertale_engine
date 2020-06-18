if (_swing)
{
	var scarf_right_texture = sprite_get_texture(_scarf_right_sprite, _scarf_right_image);
	draw_primitive_begin_texture(pr_trianglestrip, scarf_right_texture);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_right_texture_init_x + _scarf_right_x) * 2, y + (_body_init_y + _body_y + _scarf_right_texture_init_y + _scarf_right_y) * 2, 0, 0);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_right_texture_init_x + _scarf_right_x) * 2 + sprite_get_width(_scarf_right_sprite) * 2, y + (_body_init_y + _body_y + _scarf_right_texture_init_y + _scarf_right_y) * 2, 1, 0);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_right_texture_init_x + _scarf_right_x) * 2 + _scarf_right_transform, y + (_body_init_y + _body_y + _scarf_right_texture_init_y + _scarf_right_y) * 2 + sprite_get_height(_scarf_right_sprite) * 2, 0, 1);
	draw_primitive_end();
		
	draw_primitive_begin_texture(pr_trianglestrip, scarf_right_texture);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_right_texture_init_x + _scarf_right_x) * 2 + sprite_get_width(_scarf_right_sprite) * 2 + _scarf_right_transform, y + (_body_init_y + _body_y + _scarf_right_texture_init_y + _scarf_right_y) * 2 + sprite_get_height(_scarf_right_sprite) * 2, 1, 1);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_right_texture_init_x + _scarf_right_x) * 2 + sprite_get_width(_scarf_right_sprite) * 2, y + (_body_init_y + _body_y + _scarf_right_texture_init_y + _scarf_right_y) * 2, 1, 0);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_right_texture_init_x + _scarf_right_x) * 2 + _scarf_right_transform, y + (_body_init_y + _body_y + _scarf_right_texture_init_y + _scarf_right_y) * 2 + sprite_get_height(_scarf_right_sprite) * 2, 0, 1);
	draw_primitive_end();
		
	var scarf_left_texture = sprite_get_texture(_scarf_left_sprite, _scarf_left_image);
	draw_primitive_begin_texture(pr_trianglestrip, scarf_left_texture);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_left_texture_init_x + _scarf_left_x) * 2, y + (_body_init_y + _body_y + _scarf_left_texture_init_y + _scarf_left_y) * 2, 0, 0);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_left_texture_init_x + _scarf_left_x) * 2 + sprite_get_width(_scarf_left_sprite) * 2, y + (_body_init_y + _body_y + _scarf_left_texture_init_y + _scarf_left_y) * 2, 1, 0);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_left_texture_init_x + _scarf_left_x) * 2 + _scarf_left_transform, y + (_body_init_y + _body_y + _scarf_left_texture_init_y + _scarf_left_y) * 2 + sprite_get_height(_scarf_left_sprite) * 2, 0, 1);
	draw_primitive_end();

	draw_primitive_begin_texture(pr_trianglestrip, scarf_left_texture);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_left_texture_init_x + _scarf_left_x) * 2 + sprite_get_width(_scarf_left_sprite) * 2 + _scarf_left_transform, y + (_body_init_y + _body_y + _scarf_left_texture_init_y + _scarf_left_y) * 2 + sprite_get_height(_scarf_left_sprite) * 2, 1, 1);		draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_left_texture_init_x + _scarf_left_x) * 2 + sprite_get_width(_scarf_left_sprite) * 2, y + (_body_init_y + _body_y + _scarf_left_texture_init_y + _scarf_left_y) * 2, 1, 0);
	draw_vertex_texture(x + (_body_init_x + _body_x + _scarf_left_texture_init_x + _scarf_left_x) * 2 + _scarf_left_transform, y + (_body_init_y + _body_y + _scarf_left_texture_init_y + _scarf_left_y) * 2 + sprite_get_height(_scarf_left_sprite) * 2, 0, 1);
	draw_primitive_end();
}
else
{
	draw_sprite_ext(_scarf_right_sprite, _scarf_right_image, x + (_body_init_x + _body_x + _scarf_right_init_x + _scarf_right_x) * 2, y + (_body_init_y + _body_y + _scarf_right_init_y + _scarf_right_y) * 2, 2, 2, _scarf_right_angle, c_white, 1);
	draw_sprite_ext(_scarf_left_sprite, _scarf_left_image, x + (_body_init_x + _body_x + _scarf_left_init_x + _scarf_left_x) * 2, y + (_body_init_y + _body_y + _scarf_left_init_y + _scarf_left_y) * 2, 2, 2, _scarf_left_angle, c_white, 1);
}

draw_sprite_ext(_leg_right_sprite, _leg_right_image, x + (_body_init_x + _body_x + _leg_right_init_x + _leg_right_x) * 2, y + (_body_init_y + _body_y + _leg_right_init_y + _leg_right_y) * 2, 2, 2, _leg_right_angle, c_white, 1);
draw_sprite_ext(_arm_right_sprite, _arm_right_image, x + (_body_init_x + _body_x + _arm_right_init_x + _arm_right_x) * 2, y + (_body_init_y + _body_y + _arm_right_init_y + _arm_right_y) * 2, 2, 2, _arm_right_angle, c_white, 1);

draw_sprite_ext(_body_sprite, _body_image, x + (_body_init_x + _body_x) * 2, y + (_body_init_y + _body_y) * 2, 2, 2, 0, c_white, 1);
draw_sprite_ext(_head_sprite, _head_image, x + (_body_init_x + _body_x + _head_init_x + _head_x) * 2, y + (_body_init_y + _body_y + _head_init_y + _head_y) * 2, 2, 2, _head_angle, c_white, 1);

draw_sprite_ext(_leg_left_sprite, _leg_left_image, x + (_body_init_x + _body_x + _leg_left_init_x + _leg_left_x) * 2, y + (_body_init_y + _body_y + _leg_left_init_y + _leg_left_y) * 2, 2, 2, _leg_left_angle, c_white, 1);
draw_sprite_ext(_arm_left_sprite, _arm_left_image, x + (_body_init_x + _body_x + _arm_left_init_x + _arm_left_x) * 2, y + (_body_init_y + _body_y + _arm_left_init_y + _arm_left_y) * 2, 2, 2, _arm_left_angle, c_white, 1);