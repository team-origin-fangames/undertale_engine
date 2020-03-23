event_inherited();

//临时的, 不知道写哪 = =
// Player Settings
Player_SetName("Lasa");
Player_SetLv(19);
Player_SetHp(92);
Player_SetHpMax(92);

// Play BGM
var bgm = audio_create_stream("music/bgm_battle.ogg");
BGM_Play(1, bgm);
var inst = instance_create_depth(0, 0, 0, battle_popup_message);
inst._text = "Now Playing: idk the track name = =";

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
ds_list_add(_turn_list, battle_turn_bone_wave);
_turn = 0;

// Emotion Object Create
var inst = instance_create_depth(0, 0, 0, face_enemy_sans);
inst.face_id = 0;

// Start Recording
if(!Demo_IsPlaying()){
	Demo_AddInput(INPUT.UP);
	Demo_AddInput(INPUT.DOWN);
	Demo_AddInput(INPUT.LEFT);
	Demo_AddInput(INPUT.RIGHT);
	Demo_AddInput(INPUT.CONFIRM);
	Demo_AddInput(INPUT.CANCEL);
	Demo_StartRecording();
}