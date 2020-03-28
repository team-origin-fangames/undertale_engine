/// @arg x
/// @arg gap_y
/// @arg hspd
/// @arg gap
/// @arg outside
/// @arg no_bottom
/// @arg auto_destroy_dir
/// @arg *type
/// @arg *auto_destroy
/// @arg *exist_time

var bone_x = argument[0];
var bone_y = argument[1];
var bone_hspeed = argument[2];
var bone_gap = argument[3];
var bone_outside = argument[4];
var bone_no_bottom = argument[5];
var bone_auto_destroy_direction = argument[6];
var bone_type = BATTLE_BULLET_TYPE.NORMAL;
var bone_auto_destroy = true;
var bone_existence_time = -1;

if (argument_count > 8)
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

var inst = instance_create_depth(bone_x, battle_board.y + battle_board.down, 0, battle_bullet_bone);
inst.hspeed = bone_hspeed;
inst.vspeed = 0;
inst._type = bone_type;
inst._length = battle_board.y + battle_board.down - bone_gap - bone_y;
inst._origin = BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER;
inst._direction = 90;
inst._outside = bone_outside;
inst._no_bottom = bone_no_bottom;
inst._existence_time = bone_existence_time;
inst._auto_destroy = bone_auto_destroy;
inst._auto_destroy_direction = bone_auto_destroy_direction;
inst._rotate = false;
inst._rotate_angle = 0;

var inst = instance_create_depth(bone_x, battle_board.y - battle_board.up, 0, battle_bullet_bone);
inst.hspeed = bone_hspeed;
inst.vspeed = 0;
inst._type = bone_type;
inst._length = bone_y - battle_board.y + battle_board.up - bone_gap;
inst._origin = BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER;
inst._direction = - 90;
inst._outside = bone_outside;
inst._no_bottom = bone_no_bottom;
inst._existence_time = bone_existence_time;
inst._auto_destroy = bone_auto_destroy;
inst._auto_destroy_direction = bone_auto_destroy_direction;
inst._rotate = false;
inst._rotate_angle = 0;