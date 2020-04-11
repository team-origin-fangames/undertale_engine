with (inst)
{
	sprite_index = res_idle_sprite[dir];
	image_index = res_idle_image[dir];
	image_speed = res_idle_speed[dir];
	image_xscale = image_xscale * ((res_idle_flip_x[dir] && sign(image_xscale) == 1) || (!res_idle_flip_x[dir] && sign(image_xscale) == - 1) ? -1 : 1);
	alarm[0] = 1;
}
char_player.dir = DIR.RIGHT;

alarm[3] = 10;