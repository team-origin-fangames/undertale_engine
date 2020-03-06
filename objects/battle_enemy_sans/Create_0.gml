event_inherited();

//Head Variables
_head_init_x = 0;
_head_init_y = -40;
_head_sprite = spr_enemy_sans_head_blink;
_head_x = 0;
_head_y = 0;
_head_image = 1;
_head_blink = true;

//Body Variables
_body_init_x = 0;
_body_init_y = -30;
_body_sprite = spr_enemy_sans_body;
_body_x = 0;
_body_y = 0;
_body_image = 0;
_body_speed = 0.5;
_body_loop = true;

//Tail Varibles
_tail_init_x = 0;
_tail_init_y = -10;
_tail_init_angel = 0;  
_tail_x = 0;
_tail_y = 0;
_tail_angel = 0;

//Swing Variables
_swing = true;
_swing_sin = 0;

//State Machine Variables
enum SANS_STATE{
	IDLE,
	LEFT,
	RIGHT,
	UP,
	DOWN
}
state = SANS_STATE.IDLE;
_state_step = 1;