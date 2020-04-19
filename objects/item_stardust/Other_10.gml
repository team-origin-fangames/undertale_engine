///@desc Use
if (Player_IsInBattle())
{
	Dialog_Add(Lang_GetString("item.stardust.use.0") + "{pause}{clear}" + Lang_GetString("item.stardust.use.1") + "{pause}{clear}" + Item_GetTextHeal(10, false) + "{sleep 10}&" + Lang_GetString("item.stardust.use.2"));
	Battle_SetPlayerTempSpd(1);
}else
{
	Dialog_Add(Lang_GetString("item.stardust.use.0") + "{pause}{clear}" + Item_GetTextHeal(10, false));
}

Dialog_Start();

Player_Heal(10);

Item_Remove(_item_slot);

audio_play_sound(snd_item_swallow, 0, false);

alarm[0] = 20;