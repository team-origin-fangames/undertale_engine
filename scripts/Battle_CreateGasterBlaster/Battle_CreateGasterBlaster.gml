/// @arg x
/// @arg y
/// @arg x_target
/// @arg y_target
/// @arg angle_start
/// @arg angle_target
/// @arg scale_x
/// @arg scale_y
/// @arg *type
/// @arg *fire_delay
/// @arg *fire_stay
/// @arg *end_delay

var gb_x = argument[0];
var gb_y = argument[1];
var gb_x_target = argument[2];
var gb_y_target = argument[3];
var gb_angle_start = argument[4];
var gb_angle_target = argument[5];
var gb_scale_x = argument[6];
var gb_scale_y = argument[7];
var gb_type = BATTLE_BULLET_TYPE.NORMAL;
var gb_fire_delay = 15;
var gb_fire_stay = 0;
var gb_end_delay = 30;

if (argument_count >= 9)
{
	gb_type = argument[8];
}
if (argument_count >= 10)
{
	gb_fire_delay = argument[9];
}
if (argument_count >= 11)
{
	gb_fire_stay = argument[10];
}
if (argument_count >= 12)
{
	gb_end_delay = argument[11];
}

var inst = instance_create_depth(gb_x, gb_y, 0, battle_bullet_gb);
inst._x_target = gb_x_target;
inst._y_target = gb_y_target;
inst._angle_start = gb_angle_start;
inst._angle_target = gb_angle_target;
inst._scale_x = gb_scale_x;
inst._scale_y = gb_scale_y;
inst._type = gb_type;
inst._time_fire_delay = gb_fire_delay;
inst._time_fire_stay = gb_fire_stay;
inst._time_beam_end_delay = gb_end_delay;

return inst;