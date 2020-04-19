/// @desc Drop
Dialog_Add(Lang_GetString("item.tml.drop"));
Dialog_Start();

Item_Remove(_item_slot);

instance_destroy();