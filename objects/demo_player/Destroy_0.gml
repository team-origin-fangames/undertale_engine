buffer_delete(_buffer);
var proc=0;
repeat(_input_number){
	Input_RemoveStateOverride(_input_list[|proc]);
	proc+=1;
}
ds_list_destroy(_input_list);

if (window_get_caption() != GAME_NAME)
{
	window_set_caption(GAME_NAME);
}