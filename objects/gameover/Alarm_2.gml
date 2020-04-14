var bgm = audio_create_stream("music/bgm_gameover.ogg");
BGM_Play(0, bgm);

var inst = instance_create_depth(160, 300, 0, text_typer);
inst.text = "{instant true}{scale 2}{choice 0}" + Lang_GetString("gameover.choice.retry") + "    {choice 1}" + Lang_GetString("gameover.choice.watchreplay") + "{choice `A`}{pause}{end}";
inst.override_alpha_enabled = true;
inst.override_alpha = 0;
Anim_Create(inst, "override_alpha", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 0, 1, 20, 50);

instance_create_depth(0, 0, 0, bg_partical);

Anim_Create(self, "_gameover_part_0_y", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 142, 20, 60);
Anim_Create(self, "_gameover_part_0_alpha", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, 0, 1, 50);
Anim_Create(self, "_gameover_part_1_y", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, 270, - 20, 60);
Anim_Create(self, "_gameover_part_1_alpha", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, 0, 1, 50);

_ready = true;
_ready_draw = true;
