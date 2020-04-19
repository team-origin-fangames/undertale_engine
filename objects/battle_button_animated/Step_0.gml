var STATUS = Battle_GetState();
var MENU = Battle_GetMenu();

if (STATUS == BATTLE_STATE.MENU && MENU != BATTLE_MENU.FIGHT_AIM && MENU != BATTLE_MENU.FIGHT_ANIM && MENU != BATTLE_MENU.FIGHT_DAMAGE)
{
	if (Battle_GetMenuChoiceButton() == _button_slot)
	{
		if (MENU == BATTLE_MENU.BUTTON)
		{
			image_index =1;
			battle_soul.x = x - 46;
			battle_soul.y = y + 1;
			_scale_target = 1.2;
			_alpha_target = 1;
		}
	}else
	{
		image_index = 0;
		_scale_target = 1;
		_alpha_target = 0.6;

	}
}else
{
	image_index = 0;
	_scale_target = 1;
	_alpha_target = 0.6;
}

image_xscale = lerp(image_xscale, _scale_target, 0.5);
image_yscale = lerp(image_yscale, _scale_target, 0.5);
image_alpha = lerp(image_alpha, _alpha_target, 0.5);