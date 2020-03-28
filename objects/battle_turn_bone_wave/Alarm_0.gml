Battle_CreateBoneWallLeft(50, 40, 200);
Battle_CreateBoneWallRight(50, 40, 200);

/*var process = 0;
var number = 20;
repeat (number)
{
	var space_x = 15;
	var space_y = 0;
	var length_up = sin(process * 0.65 + 2 / 0.65 * pi) * 20 + 60;
	var length_down = sin(process * 0.65) * 20 + 50;
	var time = 20;
	var delay = 1;
	
	var inst = instance_create_depth(battle_board.x - process * space_x - 50, battle_board.y + battle_board.down + space_y, 0, battle_bullet_bone);
	inst._direction = 90;
	inst._length = 0;
	Anim_Create(inst, "_length", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 0, length_down, time, delay * process);
	
	var inst = instance_create_depth(battle_board.x - process * space_x - 50, battle_board.y - battle_board.up - space_y, 0, battle_bullet_bone);
	inst._direction = - 90;
	inst._length = 0;
	Anim_Create(inst, "_length", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 0, length_up, time, delay * process);
	
	process = process + 1;
}

alarm[1] = 400;
*/

	