_scale = _scale - 1 / _existence_time;

if (_scale <= 0)
{
	instance_destroy();
}

if (_timer >= 1)
{
	var part_direction = random(360);
	var part_distance = random_range(_distance_min, _distance_max);
	var part_x = x + lengthdir_x(part_distance, part_direction);
	var part_y = y + lengthdir_y(part_distance, part_direction);
	var part = instance_create_depth(part_x, part_y, depth, battle_bullet_gb_charge_partical);
	part._controller_id = id;
	part._type = _type;
	part.speed = _part_speed;
	part.gravity = _part_gravity;
	part.image_xscale = _part_xscale;
	part.image_yscale = _part_yscale;
	part.image_alpha = _part_alpha;
	image_xscale = (random_range(0.5, 0.6) * 2) * _scale;
	image_yscale = image_xscale;
}
_timer = _timer + _spawn_speed;