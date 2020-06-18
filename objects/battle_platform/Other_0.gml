if (auto_destroy)
{
	var destroy = false;
	switch (auto_destroy_direction)
	{
		case DIR.UP:
			if (y < 0)
			{
				destroy = true;
			}
			break;
			
		case DIR.DOWN:
			if (y > 480)
			{
				destroy = true;
			}
			break;
			
		case DIR.LEFT:
			if (x < 0)
			{
				destroy = true;
			}
			break;
			
		case DIR.RIGHT:
			if (x > 640)
			{
				destroy = true;
			}
			break;

		if (destroy)
		{
			instance_destroy();
		}
	}
}