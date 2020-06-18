type = BATTLE_BULLET_TYPE.NORMAL;
x_target = x;
y_target = y;
angle_start = 0;
angle_target = 0;
scale_x = 2;
scale_y = 2;
time_intro = 25;
time_fire_delay = 15;
time_fire_stay = 0;
time_beam_end_delay = 30;
speed_outro = 0;
_beam_scale_default = 1.8;
_beam_collision_scale = 1.5;
_beam_scale = 0;
_beam_alpha = 1;
_beam_sine = 0;
_karma_enabled = Player_IsKarmaEnabled();

depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
image_speed = 0;
image_alpha = 0;

_beam = instance_create_depth(0, 0, 0, battle_bullet_gb_beam);
alarm[0] = 1;