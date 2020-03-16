///@arg damage
var DAMAGE=argument[0];

if(DAMAGE>=0){
	var HP=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP);
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.HP,(HP-DAMAGE>=0 ? HP-DAMAGE : 0));
	var HIT = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.HIT);
	Flag_Set(FLAG_TYPE.STATIC, FLAG_STATIC.HIT, HIT + 1);
	return true;
}else{
	return Player_Heal(-DAMAGE);
}