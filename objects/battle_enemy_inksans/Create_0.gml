event_inherited();

Border_EnableBktGlitch(true);
Battle_EnableBG(true);

var bgm = audio_create_stream("music/battle_phase_1.ogg");
BGM_Play(0, bgm);

_enemy_slot = 0;
_hp_max = 1;
_hp = _hp_max;

_head_init_x = 2;
_head_init_y = -19;
_head_x = 0;
_head_y = 0;
_head_sprite = spr_enemy_inksans_head;
_head_image = 0;
_head_angle = 0;

_body_init_x = 0;
_body_init_y = -62;
_body_x = 0;
_body_y = 0;
_body_sprite = spr_enemy_inksans_body;
_body_image = 0;

_arm_left_init_x = 19;
_arm_left_init_y = -13;
_arm_left_x = 0;
_arm_left_y = 0;
_arm_left_sprite = spr_enemy_inksans_arm_left;
_arm_left_image = 0;
_arm_left_angle = 0;

_arm_right_init_x = -10;
_arm_right_init_y = -13;
_arm_right_x = 0;
_arm_right_y = 0;
_arm_right_sprite = spr_enemy_inksans_arm_right;
_arm_right_image = 0;
_arm_right_angle = 0;

_leg_left_init_x = 4;
_leg_left_init_y = 15;
_leg_left_x = 0;
_leg_left_y = 0;
_leg_left_sprite = spr_enemy_inksans_leg_left;
_leg_left_image = 0;
_leg_left_angle = 0;

_leg_right_init_x = -11;
_leg_right_init_y = 7;
_leg_right_x = 0;
_leg_right_y = 0;
_leg_right_sprite = spr_enemy_inksans_leg_right;
_leg_right_image = 0;
_leg_right_angle = 0;

_scarf_left_init_x = 10;
_scarf_left_init_y = -16;
_scarf_left_texture_init_x = -16;
_scarf_left_texture_init_y = -14;
_scarf_left_x = 0;
_scarf_left_y = 0;
_scarf_left_sprite = spr_enemy_inksans_scarf_left;
_scarf_left_image = 0;
_scarf_left_angle = 0;
_scarf_left_transform = 0;

_scarf_right_init_x = 10;
_scarf_right_init_y = -16;
_scarf_right_texture_init_x = -32;
_scarf_right_texture_init_y = -14;
_scarf_right_x = 0;
_scarf_right_y = 0;
_scarf_right_sprite = spr_enemy_inksans_scarf_right;
_scarf_right_image = 0;
_scarf_right_angle = 0;
_scarf_right_transform = 0;

_swing = true;
_swing_sine = 0;

state = INKSANS_STATE.STATIC;
_state_step = 0;

_turn_number = 0;
_turn_list = ds_list_create();
ds_list_add(_turn_list, noone);

_dialog_enemy = false;
_dialog_enemy_number = 0;
_dialog_enemy_text_list = ds_list_create();
ds_list_add(_dialog_enemy_text_list, noone);

always_on_board = true;

instance_create_depth(0, 0, 0, face_enemy_inksans);
face_enemy_inksans.emotion = 0;

enum INKSANS_STATE
{
	STATIC,
	IDLE,
}