depth = DEPTH_BATTLE.BG;
x = 0;
y = 0;

_color = make_color_rgb(140, 234, 255);
_change_sine = 0;
_alpha = 0;
_partical_system = part_system_create();
_partical = part_type_create();
_timer = 0;

part_system_automatic_draw(_partical_system, false);
part_type_sprite(_partical, spr_bg_partical, 0, 0, 0);
part_type_life(_partical, 35, 40);
part_type_size(_partical, 1.5, 2.5, 0, 0);
part_type_orientation(_partical, 0, 360, 1, 0, 0);
part_type_blend(_partical, 0);
part_type_direction(_partical, - 90, - 90, 0, 0);
part_type_speed(_partical, 0.5, 2, 0.01, 0);
part_type_alpha3(_partical, 0.3, 0.5, 0);
part_type_color1(_partical, _color);

Anim_Create(self, "_alpha", 0, 0, 0, 0.4, 60);