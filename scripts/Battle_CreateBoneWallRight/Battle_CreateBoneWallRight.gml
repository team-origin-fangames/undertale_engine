/// @arg length
/// @arg delay
/// @arg exist_time
/// @arg *type
var bone_length = argument[0];
var bone_delay = argument[1];
var bone_existence_time = argument[2];
var bone_type = BATTLE_BULLET_TYPE.NORMAL;
if (argument_count >= 4)
{
	bone_type = argument[3];
}

var process = 0;
var space = 12;
for (i  = 0; i < battle_board.up + battle_board.down + 12; i = i + space)
{
	bone[process] = instance_create_depth(battle_board.x + battle_board.right + bone_length, battle_board.y - battle_board.up + i, 0, battle_bullet_bone);
	bone[process].hspeed = 0;
	bone[process].vspeed = 0;
	bone[process]._type = bone_type;
	bone[process]._length = bone_length;
	bone[process]._origin = BATTLE_BULLET_BONE_ORIGIN.BOTTOM_CENTER;
	bone[process]._direction = 180;
	bone[process]._outside = false;
	bone[process]._no_bottom = true;
	bone[process]._existence_time =  bone_delay + bone_existence_time + 24;
	bone[process]._auto_destroy = false;
	bone[process]._auto_destroy_direction = DIR.LEFT;
	bone[process]._rotate = false;
	bone[process]._rotate_angle = 0;
	
	with (bone[process])
	{
		Anim_Create(self, "x", 0, 0, x, - bone_length, 8, bone_delay);
		Anim_Create(self, "x", 0, 0, x - bone_length, bone_length, 16, bone_delay + bone_existence_time + 8);
		bone_shaker = instance_create_depth(0, 0, 0, shaker);
		bone_shaker.target = self;
		bone_shaker.var_name = "y";
		bone_shaker.shake_distance = 2;
		bone_shaker.shake_speed = 1;
		bone_shaker.shake_random = false;
		bone_shaker.shake_decrease = 1;
		bone_shaker.delay = bone_delay + 8;
	}
	
	process = process + 1;	
}

var bone_warning = instance_create_depth(battle_board.x + battle_board.right - bone_length, battle_board.y - battle_board.up + 1, 0, battle_warning);
bone_warning._width = bone_length + 1;
bone_warning._height = battle_board.up + battle_board.down - 2;
bone_warning._time = bone_delay;
audio_stop_sound(snd_exclamation);
audio_play_sound(snd_exclamation, 0, 0);