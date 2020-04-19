///@arg soul_obj
var soul = argument[0];
var soul_type = BATTLE_SOUL_TYPE.RED;

if (Battle_IsSoulValid(soul))
{
	switch (soul)
	{
		case battle_soul_red:
			soul_type = BATTLE_SOUL_TYPE.RED;
			break;
		
		case battle_soul_blue:
			soul_type = BATTLE_SOUL_TYPE.BLUE;
			break;
		
		case battle_soul_yellow:
			soul_type = BATTLE_SOUL_TYPE.YELLOW;
			break;
		
		case battle_soul_reimu:
			soul_type = BATTLE_SOUL_TYPE.REIMU;
			break;
	}
	
	var inst = instance_create_depth(0, 0, 0, battle_soul_switch);
	inst._type = soul_type;
}

Battle_SetSoul(soul);

return true;