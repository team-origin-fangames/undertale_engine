_sprite_list = ds_list_create();
ds_list_add(_sprite_list, spr_battle_soul_red, spr_battle_soul_blue, spr_battle_soul_yellow, spr_battle_soul_reimu);
_type = BATTLE_SOUL_TYPE.RED;
_direction = DIR.DOWN;
depth = DEPTH_BATTLE.SOUL;
image_speed = 0;

audio_stop_sound(snd_soul_switch);
audio_play_sound(snd_soul_switch, 0, 0);

Anim_Create(id, "image_alpha", ANIM_TWEEN.EXPO, ANIM_EASE.OUT, 1, -1, 20);
Anim_Create(id, "image_xscale", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 1, 3, 15);
Anim_Create(id, "image_yscale", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 1, 3, 15);