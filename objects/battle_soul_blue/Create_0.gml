event_inherited();

_moveable = true;
_direction = DIR.DOWN;
_gravity = 0.2;
_friction = 0.2;
_acceleration = 0.4;
_max_speed = 5;

enum SOUL_BLUE_STATE
{
	ONGROUND,
	JUMPING,
	FALLING
}