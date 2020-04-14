if (emotion != _emotion_previous)
{
	_head_image = emotion;
	_emotion_previous = emotion;
}

if (talking)
{
	if (_talking_timer == 1)
	{
		switch (_mouth_image)
		{
			case 0:
				_mouth_image = 1;
				_talking_timer = 0;
				break;
				
			case 1:
				_mouth_image = 0;
				_talking_timer = 0;
				break;
		}
	}
	_talking_timer = _talking_timer + 0.2;
}else
{
	_mouth_image = 0;
}