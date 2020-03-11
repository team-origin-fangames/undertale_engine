///@desc Menu Switch
switch (Battle_GetMenu())
{
	case BATTLE_MENU.FIGHT_ANIM:
		if (Battle_GetMenuFightDamage() >= 0)
		{
			_body_sprite = spr_enemy_sans_body_miss;
			Anim_Create(self, "x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, x, -100, 25);
			Anim_Create(self, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN, x - 100, 100, 25, 35);
			Battle_SetMenuFightAnimTime(60);
		}
		break;
		
	case BATTLE_MENU.FIGHT_DAMAGE:
		alarm[3] = 60;
		instance_create_depth(x, y - 200, 0, battle_damage);
		break;
}