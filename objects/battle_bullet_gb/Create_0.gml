_type = BATTLE_BULLET_TYPE.NORMAL;
_x_target = x;
_y_target = y;
_angel_start = 0;
_angel_end = 0;
_scale_x = 2;
_scale_y = 2;
_time_intro = 25;
_time_fire_delay = 15;
_time_fire_stay = 0;
_time_beam_end_delay = 30;
_speed_outro = 0;
_beam_scale_init = 1.8;
_beam_collision_scale = 1.5;
_beam_scale = 0;
_beam_alpha = 1;
_beam_sine = 0;

depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
image_speed = 0;
image_alpha = 0;

_inst = instance_create_depth(0, 0, 0, battle_bullet_gb_beam);
alarm[0] = 1;