/// @arg x
/// @arg hspd
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

var bone_x = argument[0];
var bone_hspeed = argument[1];
var bone_length = argument[2];
var bone_outside = argument[3];
var bone_no_bottom = argument[4];
var bone_auto_destroy_dir = argument[5];
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
if (argument_count >= 11)
{
	bone_rotate = argument[9];
	bone_rotate_angle = argument[10];
}
if (argument_count >= 12)
{
	bone_existence_time = argument[11];
}

var inst = Battle_CreateBone(bone_x, battle_board.y + battle_board.down, bone_hspeed, 0, bone_length, 90, bone_outside, bone_no_bottom, bone_auto_destroy_dir, bone_type, bone_auto_destroy, BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER, bone_rotate, bone_rotate_angle, bone_existence_time);

return inst;