///@desc Use
Dialog_Add(Item_GetTextEat(Lang_GetString("item.banana_pair.eat")) + "{pause}{clear}" + Item_GetTextHeal(25, false));
Dialog_Start();

Player_Heal(25);

Item_Remove(_item_slot);

Item_Add(item_banana);

audio_play_sound(snd_item_swallow, 0, false);

alarm[0] = 20;