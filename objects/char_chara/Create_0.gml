event_inherited();

char_id = 1;

res_idle_sprite[DIR.UP] = spr_char_chara_idle_up;
res_idle_sprite[DIR.DOWN] = spr_char_chara_idle_down;
res_idle_sprite[DIR.LEFT] = spr_char_chara_idle_left;
res_idle_sprite[DIR.RIGHT] = spr_char_chara_idle_right;
res_move_sprite[DIR.UP] = spr_char_chara_move_up;
res_move_sprite[DIR.DOWN] = spr_char_chara_move_down;
res_move_sprite[DIR.LEFT] = spr_char_chara_move_left;
res_move_sprite[DIR.RIGHT] = spr_char_chara_move_right;

res_idle_flip_x[DIR.LEFT] = false;
res_move_flip_x[DIR.LEFT] = false;

switch (Sans_GetPhase())
{
	case 0:
		Player_LvUp(11);
		Player_SetHp(Player_GetHpMax());
		Player_SetLv("??");
		Player_SetExp("??");
		break;
		
	case 1:
		Player_LvUp(20);
		Player_SetHp(Player_GetHpMax());
		break;
}

_item_list = ds_list_create();
ds_list_add(_item_list, item_tml, item_pie, item_nice_cream, item_nice_cream, item_steak, item_stardust, item_banana_pair)
for (var process = 0; process < ds_list_size(_item_list); process = process + 1)
{
	Item_Set(process, ds_list_find_value(_item_list, process));
}

if (room == room_multiverse)
{
var bgm = audio_create_stream("music/bgm_multiverse.ogg");
BGM_Play(0, bgm);
}