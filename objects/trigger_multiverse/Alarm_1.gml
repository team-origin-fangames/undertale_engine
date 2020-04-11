with (inst)
{
	sprite_index = res_move_sprite[dir];
	image_index = res_move_image[dir];
	image_speed = res_move_speed[dir];
	image_xscale = image_xscale * ((res_move_flip_x[dir] && sign(image_xscale) == 1) || (!res_move_flip_x[dir] && sign(image_xscale) == - 1) ? -1 : 1);
	alarm[0] = - 1;
	alarm[1] = - 1;
	alarm[2] = - 1;
}

Anim_Create(inst, "x", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, inst.x, - 60, 240);
Anim_Create(inst, "shadow_value", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, inst.shadow_value, - 1, 170);

alarm[2] = 170; 