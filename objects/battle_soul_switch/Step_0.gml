image_angle = dir;
sprite_index = _sprite_list[|type];

x = battle_soul.x;
y = battle_soul.y;

if (image_alpha <= 0)
{
	instance_destroy();
}