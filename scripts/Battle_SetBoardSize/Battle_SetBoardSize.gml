/// @arg up
/// @arg down
/// @arg left
/// @arg right
/// @arg *time
var up = argument[0];
var down = argument[1];
var left = argument[2];
var right = argument[3];
var time = 25;
if (argument_count >= 5)
{
	time = argument[4];
}

if(is_real(up))
{
	if (time == 0)
	{
		battle_board.up = up;
	}else
	{
		Anim_Create(battle_board, "up", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, battle_board.up, up - battle_board.up, time);
	}
}

if(is_real(down))
{
	if (time == 0)
	{
		battle_board.down = down;
	}else
	{
		Anim_Create(battle_board, "down", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, battle_board.down, down - battle_board.down, time);
	}
}

if(is_real(left))
{
	if (time == 0)
	{
		battle_board.left = left;
	}else
	{
		Anim_Create(battle_board, "left", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, battle_board.left, left - battle_board.left, time);
	}
}

if(is_real(right))
{
	if (time == 0)
	{
		battle_board.right = right;
	}else
	{
		Anim_Create(battle_board, "right", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, battle_board.right, right - battle_board.right, time);
	}
}

return true;