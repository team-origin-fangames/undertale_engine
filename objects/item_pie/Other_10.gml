/// @desc Use
Dialog_Add(Item_GetTextEat(_name) + "{sleep 10}&" + Lang_GetString("item.pie.use") + "{pause}{clear}" + Item_GetTextHeal(20, false));
Dialog_Start();

Player_Heal((Player_IsKarmaEnabled() ? (Player_GetHpMax() - Player_GetHp() - Player_GetKarma) : (Player_GetHpMax() - Player_GetHp())));

Item_Remove(_item_slot);

audio_play_sound(snd_item_swallow, 0, false);

alarm[0] = 20;