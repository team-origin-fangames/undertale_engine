event_inherited();

moveable=true;
_show_collision_point = false;

enum SOUL_REIMU_STATE 
{
	NORMAL,
	LEFT,
	RIGHT
}
_state = SOUL_REIMU_STATE.NORMAL;

if (instance_exists(demo_recorder))
{
	demo_recorder._show_info_window_title = false;
}

if (instance_exists(demo_player))
{
	demo_player._show_info_window_title = false;
}
