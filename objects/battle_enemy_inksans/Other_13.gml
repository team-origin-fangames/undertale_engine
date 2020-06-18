///@desc Menu Switch
switch (Battle_GetMenu())
{
	case BATTLE_MENU.FIGHT_TARGET:
		var inst = instance_create_depth(0, 0, 0, battle_menu_fight_hp_bar);
		inst.enemy_slot = _enemy_slot;
		inst.hp = _hp;
		inst.hp_max = _hp_max;
		break;
		
	case BATTLE_MENU.FIGHT_ANIM:
		Anim_Create(self, "x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, x, - 100, 25);
		Anim_Create(self, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN, x - 100, 100, 25, 35);
		Battle_SetMenuFightAnimTime(60);
		break;
		
	case BATTLE_MENU.FIGHT_DAMAGE:
		instance_create_depth(x, y - 150, 0, battle_damage);
		break;
}