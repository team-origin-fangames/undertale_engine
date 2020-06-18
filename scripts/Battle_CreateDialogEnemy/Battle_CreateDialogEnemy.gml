/// @arg x
/// @arg y
/// @arg text
/// @arg tempate
/// @arg *dir
/// @arg *show_spike
/// @arg *wide_spike

var dialog_enemy_x = argument[0];
var dialog_enemy_y = argument[1];
var dialog_enemy_text = argument[2];
var dialog_enemy_template = argument[3];
var dialog_enemy_direction = DIR.LEFT;
var dialog_enemy_show_spike = true;
var dialog_enemy_wide_spike = true;

if (argument_count >= 5)
{
	dialog_enemy_direction = argument[4];
}
if (argument_count >= 6)
{
	dialog_enemy_show_spike = argument[5];
}
if (argument_count >= 7)
{
	dialog_enemy_wide_spike = argument[6];
}

var inst = instance_create_depth(dialog_enemy_x, dialog_enemy_y, 0, battle_dialog_enemy);
inst.text = dialog_enemy_text;
inst.template = dialog_enemy_template;
inst.dir = dialog_enemy_direction;
inst.show_spike = dialog_enemy_show_spike;
inst.wide_spike = dialog_enemy_wide_spike;

return inst;