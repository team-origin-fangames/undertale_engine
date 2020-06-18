///@desc Turn Preparation Start
if (_dialog_enemy && _dialog_enemy_number < ds_list_size(_dialog_enemy_text_list))
{
	Battle_CreateDialogEnemy(x + 100, y - 150, _dialog_enemy_text_list[|_dialog_enemy_number], 0);
}

if (_turn_number < ds_list_size(_turn_list))
{
	instance_create_depth(0, 0, 0, _turn_list[|_turn_number]);
}