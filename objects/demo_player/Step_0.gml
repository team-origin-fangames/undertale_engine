/*if(!_paused&&_frame_current<_frame_number){
	if(_icon_show_tick>60){
		_icon_show_tick=0;
	}else{
		_icon_show_tick+=1;
	}
}else{
	_icon_show_tick=0;
}*/

if (window_get_caption() != GAME_NAME + " - Playing - Frame: " + string(_frame_current) + " / " + string(_frame_number))
{
	window_set_caption(GAME_NAME + " - Playing - Frame: " + string(_frame_current) + " / " + string(_frame_number));
}