event_inherited();
//Test Varibles
_test = true;

// Head Variables
_head_init_x = 0;
_head_init_y = -40;
_head_sprite = spr_enemy_sans_head_blink;
_head_x = 0;
_head_y = 0;
_head_image = 0; 
_head_blink = true;
_blink_not_started = true;

// Body Variables
_body_init_x = 0;
_body_init_y = -52;
_body_sprite = spr_enemy_sans_body;
_body_x = 0;
_body_y = 0;
_body_image = 0;
_body_speed = 0.06;
_body_loop = true;

// Legs Variables
_legs_image = 0;
_legs_speed = 0;

// Tail Varibles
_tail_init_x = 0;
_tail_init_y = -39;
_tail_init_angel = 0;  
_tail_x = 0;
_tail_y = 0;
_tail_angel = 0;

// Swing Variables
_swing = true;
_swing_sine = 0;

// State Machine Variables
enum SANS_STATE{
	STATIC,
	IDLE,
	LEFT,
	RIGHT,
	UP,
	DOWN
}
state = SANS_STATE.STATIC;
_state_step = 2;