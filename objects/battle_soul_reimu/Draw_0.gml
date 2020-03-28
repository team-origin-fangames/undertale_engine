var STATE=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATE==BATTLE_STATE.IN_TURN || STATE==BATTLE_STATE.TURN_PREPARATION || (STATE==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE)){
	draw_self();
	if (_show_collision_point)
	{
	draw_sprite_ext(spr_battle_soul_reimu, 4, x, y, 1, 1, 0, c_white, 1);
	}
}