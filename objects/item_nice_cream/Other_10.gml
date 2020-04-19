///@desc Use
Dialog_Add(Item_GetTextEat(_name) + "{sleep 10}&" + Lang_GetString("item.nice_cream.use") + "{pause}{clear}" + Item_GetTextHeal(15, false));
Dialog_Start();

Player_Heal(15);

Item_Remove(_item_slot);

audio_play_sound(snd_item_swallow, 0, false);

alarm[0] = 20;