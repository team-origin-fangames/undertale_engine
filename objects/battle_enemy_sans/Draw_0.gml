draw_sprite_ext(spr_enemy_sans_tail, 0, x + _tail_init_x * 2 + _tail_x * 2, y + _tail_init_y * 2 + _tail_y * 2, 2, 2, _tail_init_angel + _tail_angel, c_white, 1);
draw_sprite_ext(spr_enemy_sans_legs, 0, x, y, 2, 2, 0, c_white, 1);
draw_sprite_ext(_body_sprite, _body_image, x + _body_init_x * 2 + _body_x * 2, y + _body_init_y * 2 + _body_y * 2, 2, 2, 0, c_white, 1);
draw_sprite_ext(_head_sprite, _head_image, x + _body_init_x * 2 + _body_x * 2 + _head_init_x * 2 + _head_x * 2, y + _body_init_y * 2 + _body_y * 2+ _head_init_y * 2 + _head_y * 2, 2, 2, 0, c_white, 1);