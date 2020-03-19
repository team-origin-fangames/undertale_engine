var inst = instance_create_depth(0, 0, 0, battle_soul_switch);
inst._type = BATTLE_SOUL_TYPE.BLUE;

var inst1 = instance_create_depth(battle_soul.x, battle_soul.y, 0, battle_platform);
inst1._type = BATTLE_PLATFORM_TYPE.GREEN;
alarm[1] = 300;