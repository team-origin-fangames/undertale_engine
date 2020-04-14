event_inherited();

var spd=1/3;
res_idle_speed[0]=spd;
res_idle_speed[90]=spd;
res_idle_speed[180]=spd;
res_idle_speed[270]=spd;

res_move_speed[0]=spd;
res_move_speed[90]=spd;
res_move_speed[180]=spd;
res_move_speed[270]=spd;

res_talk_speed[0]=spd;
res_talk_speed[90]=spd;
res_talk_speed[180]=spd;
res_talk_speed[270]=spd;

_light = instance_create_depth(x, y - 9, depth, light_circle);
_light.image_blend = make_color_rgb(140, 234, 255);
show_debug_message(depth);