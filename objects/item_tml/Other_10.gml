///@desc Use
Dialog_Add(Lang_GetString("item.tml.use") + "{pause}{clear}" + Item_GetTextHeal(20, false));
Dialog_Start();

Player_Heal(20);

Item_Remove(_item_slot);

audio_play_sound(snd_item_swallow, 0, false);

alarm[0] = 20;