event_inherited();

dir = DIR.LEFT;
dir_locked = true;

res_move_sprite[DIR.LEFT] = spr_char_sans_move_left;
res_idle_sprite[DIR.LEFT] = spr_char_sans_idle_left;

res_move_flip_x[DIR.LEFT] = false;
res_idle_flip_x[DIR.LEFT] = false;

sprite_index = res_idle_sprite[dir];
image_index = res_idle_image[dir];
image_speed = res_idle_speed[dir];
image_xscale = image_xscale * ((res_idle_flip_x[dir]&&sign(image_xscale)==1)||(!res_idle_flip_x[dir]&&sign(image_xscale)==-1) ? -1 : 1);
alarm[0] = 1;