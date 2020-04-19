Sans_SetState(SANS_STATE.IDLE);
Battle_SwitchSoul(battle_soul_red);
var process = 0;
repeat (20)
{
	Battle_CreateBonePairedH(battle_board.x  + sin(process) * 9, battle_board.y - battle_board.up - process * 15, 2.5, 20, false, true, DIR.DOWN);
	process = process + 1;
}
alarm[4] = 100;