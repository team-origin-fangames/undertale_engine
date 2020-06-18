/// @arg gap_x
/// @arg y
/// @arg vspd
/// @arg gap
/// @arg outside
/// @arg no_bottom
/// @arg auto_destroy_dir
/// @arg *type
/// @arg *auto_destroy
/// @arg *exist_time

var bone_x = argument[0];
var bone_y = argument[1];
var bone_vspeed = argument[2];
var bone_gap = argument[3];
var bone_outside = argument[4];
var bone_no_bottom = argument[5];
var bone_auto_destroy_dir = argument[6];
var bone_type = BATTLE_BULLET_TYPE.NORMAL;
var bone_auto_destroy = true;
var bone_existence_time = -1;

if (argument_count >= 8)
{
	bone_type = argument[7];
}
if (argument_count >= 9)
{
	bone_auto_destroy = argument[8];
}
if (argument_count >= 10)
{
	bone_existence_time = argument[9];
}

Battle_CreateBoneLeft(bone_y, bone_vspeed, bone_x - battle_board.x + battle_board.left - bone_gap, bone_outside, bone_no_bottom, bone_auto_destroy_dir, bone_type, bone_auto_destroy, BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER, false, 0, bone_existence_time);

Battle_CreateBoneRight(bone_y, bone_vspeed, battle_board.x + battle_board.right - bone_gap - bone_x, bone_outside, bone_no_bottom, bone_auto_destroy_dir, bone_type, bone_auto_destroy, BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER, false, 0, bone_existence_time);