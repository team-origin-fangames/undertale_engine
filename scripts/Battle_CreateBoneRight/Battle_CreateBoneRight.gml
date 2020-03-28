/// @arg y
/// @arg vspd
/// @arg length
/// @arg outside
/// @arg no_bottom
/// @arg auto_destroy_dir
/// @arg *type
/// @arg *auto_destroy
/// @arg *origin
/// @arg *rotate
/// @arg *rotate_angle
/// @arg *exist_time

var bone_y = argument[0];
var bone_vspeed = argument[1];
var bone_length = argument[2];
var bone_outside = argument[3];
var bone_no_bottom = argument[4];
var bone_auto_destroy_direction = argument[5];
var bone_type = BATTLE_BULLET_TYPE.NORMAL;
var bone_auto_destroy = true;
var bone_origin = BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER;
var bone_rotate = false;
var bone_rotate_angle = 0;
var bone_existence_time = -1;

if (argument_count >= 7)
{
	bone_type = argument[6];
}
if (argument_count >= 8)
{
	bone_auto_destroy = argument[7];
}
if (argument_count >= 9)
{
	bone_origin = argument[8];
}
if (argument_count >= 10)
{
	bone_rotate = argument[9];
	bone_rotate_angle = argument[10];
}
if (argument_count >= 12)
{
	bone_existence_time = argument[11];
}

var inst = instance_create_depth(battle_board.x + battle_board.right, bone_y, 0, battle_bullet_bone);
inst.hspeed = 0;
inst.vspeed = bone_vspeed;
inst._type = bone_type;
inst._length = bone_length;
inst._origin = bone_origin;
inst._direction = 180;
inst._outside = bone_outside;
inst._no_bottom = bone_no_bottom;
inst._existence_time = bone_existence_time;
inst._auto_destroy = bone_auto_destroy;
inst._auto_destroy_direction = bone_auto_destroy_direction;
inst._rotate = bone_rotate;
inst._rotate_angle = bone_rotate_angle;