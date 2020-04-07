_partical_system = part_system_create();
_partical = part_type_create();
_timer = 0;

part_system_automatic_draw(_partical_system, true);
part_system_automatic_update(_partical_system, true);
part_type_sprite(_partical, spr_meteor, 0, 0, 1);
part_type_life(_partical, 900, 900);
part_type_orientation(_partical, - 135, - 135, 0, 0, 0);
part_type_blend(_partical, 0);
part_type_direction(_partical, -135, -135, 0, 0);
part_type_speed(_partical, 1, 2, 0.02, 0);
part_type_alpha3(_partical, 0.5, 1, 0);