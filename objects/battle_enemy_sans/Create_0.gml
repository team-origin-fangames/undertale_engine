event_inherited();

// BGM Play
var bgm = audio_create_stream("music/bgm_battle.ogg");
BGM_Play(1, bgm);
var inst = instance_create_depth(0, 0, 0, battle_popup_message);
inst._text = "Now Playing: Twinkling Ray (Battle Theme)";

// Enemy Information Set
_enemy_slot = 0;
_hp = 440;
_hp_max = 440;

// Head Variables
_head_init_x = 0;
_head_init_y = - 41;
_head_sprite = spr_enemy_sans_head;
_head_x = 0;
_head_y = 0;
_head_image = 0; 
_head_blink = true;
_head_blink_enabled = false;

// Body Variables
_body_init_x = 0;
_body_init_y = - 51;
_body_sprite = spr_enemy_sans_body_swing;
_body_x = 0;
_body_y = 0;
_body_image = 0;
_body_speed = 0.06;
_body_loop = true;

// Tail Varibles
_tail_init_x = 0;
_tail_init_y = - 39;
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
	SPARE
}
_fight_state = FIGHT_STATE.NORMAL;

// Turn Variables
_turn_list = ds_list_create();
ds_list_add(_turn_list, battle_turn_intro);
_turn = 0;

// Emotion Object Create
instance_create_depth(0, 0, 0, face_enemy_sans);

//Always on Board
_on_board = true;

// Demo Recording Start
if(!Demo_IsPlaying()){
	Demo_AddInput(INPUT.UP);
	Demo_AddInput(INPUT.DOWN);
	Demo_AddInput(INPUT.LEFT);
	Demo_AddInput(INPUT.RIGHT);
	Demo_AddInput(INPUT.CONFIRM);
	Demo_AddInput(INPUT.CANCEL);
	Demo_StartRecording();
}

// Player Infomation Set
switch (Sans_GetPhase())
{
	case 0:
		Player_LvUp(11);
		Player_SetHp(Player_GetHpMax());
		Player_SetLv("??");
		Player_SetExp("??");
		break;
		
	case 1:
		Player_LvUp(20);
		Player_SetHp(Player_GetHpMax());
		break;
}

// Dialog Enemy Varibles
_dialog_enemy = false;
_dialog_enemy_text = 0;
_dialog_enemy_text_list = ds_list_create();
ds_list_add(_dialog_enemy_text_list, Lang_GetString("battle.sans.dialog_enemy.0"))