_hint = false;
alarm[0] = 200;
alarm[1] = 50;
_logo_part_0_alpha = 0;
_logo_part_0_y = 240;
_logo_part_1_x = - 168;
_logo_part_2_x = 907;

Anim_Create(self, "_logo_part_0_alpha", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT,  0, 1, 40);
Anim_Create(self, "_logo_part_0_y", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT,  240, - 38, 50);

audio_play_sound(snd_logo, 0, false);