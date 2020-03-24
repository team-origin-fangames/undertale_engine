///@arg x
///@arg y
///@arg x_target
///@arg y_target
///@arg angle_start
///@arg angle_target
///@arg scale_x
///@arg scale_y
///@arg color
///@arg pause
///@arg duration
var xx = argument[0];
var yy = argument[1];
var idealx = argument[2];
var idealy = argument[3];
var angle = argument[4];
var idealrot = argument[5];
var xscale = argument[6];
var yscale = argument[7];
var color = argument[8];
var pause = argument[9];
var duration = argument[10];

var bb = instance_create_depth(xx,yy,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,battle_bullet_gb);
bb._x_target = idealx;
bb._y_target = idealy;
bb._angle_start = angle;
bb._angle_target = idealrot;
bb._scale_x = xscale;
bb._scale_y = yscale;
bb._type = color;
bb._time_release_delay = pause;
bb._time_beam_end_delay = duration;

return bb;