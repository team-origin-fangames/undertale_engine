event_inherited();
// Player Settings
Player_SetName("Lasa");
Player_SetLv(19);
Player_SetHp(92);
Player_SetHpMax(92);

// Head Variables
_head_init_x = 0;
_head_init_y = -41;
_head_sprite = spr_enemy_sans_head;
_head_x = 0;
_head_y = 0;
_head_image = 0; 
_head_blink = true;
_blink_not_started = true;

// Body Variables
_body_init_x = 0;
_body_init_y = -51;
_body_sprite = spr_enemy_sans_body_swing;
_body_x = 0;
_body_y = 0;
_body_image = 0;
_body_speed = 0.06;
_body_loop = true;

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
enum SANS_STATE
{
	STATIC,
	IDLE,
	LEFT,
	RIGHT,
	UP,
	DOWN,
	ATTACK
}
_state = SANS_STATE.IDLE;
_state_step = 0;

enum FIGHT_STATE
{
	NORMAL,
	PAUSED,
	SPARED
}
_fight_state = FIGHT_STATE.NORMAL;

// Turn Variables
_turn_list = ds_list_create();
ds_list_add(_turn_list, battle_turn_sans_0);
_turn = 0;

// Emotion Object Create
var inst = instance_create_depth(0, 0, 0, face_enemy_sans);
inst.face_id = 0;
