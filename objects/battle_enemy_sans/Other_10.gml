///@desc Init
Battle_SetEnemyName(_enemy_slot, Lang_GetString("battle.sans.name"));
Battle_SetEnemyActionNumber(_enemy_slot, 4);
Battle_SetEnemyActionName(_enemy_slot, 0, Lang_GetString("battle.sans.act.check"));
Battle_SetEnemyActionName(_enemy_slot, 1, Lang_GetString("battle.sans.act.talk"));
Battle_SetEnemyActionName(_enemy_slot, 2, Lang_GetString("battle.sans.act.flirt"));
Battle_SetEnemyActionName(_enemy_slot, 3, Lang_GetString("battle.sans.act.pet"));
Battle_SetMenuChoiceMercyOverride(true);
Battle_SetMenuChoiceMercyOverrideNumber(1);
Battle_SetMenuChoiceMercyOverrideName(0, Lang_GetString("battle.menu.mercy.spare"));