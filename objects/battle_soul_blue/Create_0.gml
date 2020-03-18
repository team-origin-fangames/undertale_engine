event_inherited();

_moveable = true;
_direction = DIR.RIGHT;
_gravity = 0.2;
_friction = 0.2;
_acceleration = 0.4;
_speed_max = 5;

enum SOUL_BLUE_STATE
{
	ONGROUND,
	JUMPING,
	FALLING
}