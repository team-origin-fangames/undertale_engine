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
		if (Sans_GetMiss() == 1 ||Sans_GetMiss() == 2)
		{
			_body_sprite = spr_enemy_sans_body_miss;
			Anim_Create(self, "x", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, x, - 100, 25);
			Anim_Create(self, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN, x - 100, 100, 25, 35);
			Battle_SetMenuFightAnimTime(60);
		}
		break;

	case BATTLE_MENU.FIGHT_DAMAGE:
		if (Sans_GetMiss() == 1 ||Sans_GetMiss() == 2)
		{
			alarm[3] = 60;
			instance_create_depth(x, y - 150, 0, battle_damage);
		}else
		{
			var inst = instance_create_depth(x, y - 150, 0, battle_damage);
			inst.damage = Player_GetAtkTotal();
			inst.bar_hp_max = _hp_max;
			inst.bar_hp_original = _hp;
			inst.bar_hp_target = _hp - Battle_GetMenuFightDamage();
			
			Camera_Shake(10, 10, 1, 1, 1, 1, 1, 1);
			audio_play_sound(snd_damage, 0, 0);
			Sans_SetMiss(1);
			
			alarm[5] = 10;
		}
		break;
}