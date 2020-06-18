///@desc Init
Battle_SetEnemyName(_enemy_slot, Lang_GetString("battle.inksans.name"));
Battle_SetEnemyActionNumber(_enemy_slot, 1);
Battle_SetEnemyActionName(_enemy_slot, 0, Lang_GetString("battle.menu.act.check"));
Battle_SetMenuChoiceMercyOverride(true);
Battle_SetMenuChoiceMercyOverrideNumber(2);
Battle_SetMenuChoiceMercyOverrideName(0, Lang_GetString("battle.menu.mercy.spare"));
Battle_SetMenuChoiceMercyOverrideName(1, Lang_GetString("battle.menu.mercy.reset"));