var color = c_white;
switch (_type)
{
	case BULLET_TYPE.NORMAL:
		break;
		
	case BULLET_TYPE.BLUE:
		color = make_color_rgb(20, 169, 255);
		break;
		
	case BULLET_TYPE.ORANGE:
		color = make_color_rgb(255, 160, 64);
		break;
}
