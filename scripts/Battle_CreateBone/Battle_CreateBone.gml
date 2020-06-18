/// @arg x
/// @arg y
/// @arg hspd
/// @arg vspd
/// @arg length
/// @arg dir
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
var bone_y = argument[1];
var bone_hspeed = argument[2];
var bone_vspeed = argument[3];
var bone_length = argument[4];
var bone_dir = argument[5];
var bone_outside = argument[6];
var bone_no_bottom = argument[7];
var bone_auto_destroy_dir = argument[8];
var bone_type = BATTLE_BULLET_TYPE.NORMAL;
var bone_auto_destroy = true;
var bone_origin = BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER;
var bone_rotate = false;
var bone_rotate_angle = 0;
var bone_existence_time = -1;

if (argument_count >= 10)
{
	bone_type = argument[9];
}
if (argument_count >= 11)
{
	bone_auto_destroy = argument[10];
}
if (argument_count >= 12)
{
	bone_origin = argument[11];
}
if (argument_count >= 14)
{
	bone_rotate = argument[12];
	bone_rotate_angle = argument[13];
}
if (argument_count >= 15)
{
	bone_existence_time = argument[14];
}

var inst = instance_create_depth(bone_x, bone_y, 0, battle_bullet_bone);
inst.hspeed = bone_hspeed;
inst.vspeed = bone_vspeed;
inst.type = bone_type;
inst.length = bone_length;
inst.origin = bone_origin;
inst.dir = bone_dir;
inst.outside = bone_outside;
inst.no_bottom = bone_no_bottom;
inst.existence_time = bone_existence_time;
inst.auto_destroy = bone_auto_destroy;
inst.auto_destroy_dir = bone_auto_destroy_dir;
inst.rotate = bone_rotate;
inst.rotate_angle = bone_rotate_angle;

return inst;