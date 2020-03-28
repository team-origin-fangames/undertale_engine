if (_show_icon)
{
	if(!_paused){
		if(_icon_show_tick>60){
			_icon_show_tick=0;
		}else{
			_icon_show_tick+=1;
		}
	}else{
		_icon_show_tick=0;
	}
}

if (_show_info_window_title)
{
	if (window_get_caption() != GAME_NAME + " - Recording - Frame: " + string(_frame_number))
	{
		window_set_caption(GAME_NAME + " - Recording - Frame: " + string(_frame_number));
	}
}