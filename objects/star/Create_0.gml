image_speed = 0;
image_index = irandom_range(0, 2);

_light = instance_create_depth(x, y, depth, light_circle);
_light.image_xscale = 0.5;
_light.image_yscale = 0.5;
_light.image_blend = make_color_rgb(140, 234, 255);