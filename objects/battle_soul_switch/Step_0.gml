switch (_direction)
{
	case DIR.UP:
		image_angle = 180;
		break;
	
	case DIR.DOWN:
		image_angle = 0;
		break;
	
	case DIR.LEFT:
		image_angle = -90;
		break;
	
	case DIR.RIGHT:
		image_angle = 90;
		break;
}

sprite_index = _sprite_list[|_type];

x = battle_soul.x;
y = battle_soul.y;

if (image_alpha <= 0)
{
	instance_destroy();
}