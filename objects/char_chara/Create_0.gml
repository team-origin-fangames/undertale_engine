event_inherited();

char_id = 1;

res_idle_sprite[DIR.UP] = spr_char_chara_idle_up;
res_idle_sprite[DIR.DOWN] = spr_char_chara_idle_down;
res_idle_sprite[DIR.LEFT] = spr_char_chara_idle_left;
res_idle_sprite[DIR.RIGHT] = spr_char_chara_idle_right;
res_move_sprite[DIR.UP] = spr_char_chara_move_up;
res_move_sprite[DIR.DOWN] = spr_char_chara_move_down;
res_move_sprite[DIR.LEFT] = spr_char_chara_move_left;
res_move_sprite[DIR.RIGHT] = spr_char_chara_move_right;

res_idle_flip_x[DIR.LEFT] = false;
res_move_flip_x[DIR.LEFT] = false;

var bgm = audio_create_stream("music/bgm_multiverse.ogg");
BGM_Play(2, bgm);
var inst = instance_create_depth(0, 0, 0, battle_popup_message);
inst._text = "Now Playing: music/bgm_multiverse.ogg";