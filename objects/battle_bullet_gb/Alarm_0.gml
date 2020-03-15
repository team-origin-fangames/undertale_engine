image_alpha = 1;
Anim_Create(id, "image_angel", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, _angel_start, _angel_end - _angel_start, _time_intro);
Anim_Create(id, "x", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, x, _x_target - x, _time_intro);
Anim_Create(id, "y", ANIM_TWEEN.CUBIC, ANIM_EASE.OUT, y, _y_target - y, _time_intro);
audio_stop_sound(snd_gb_charge);
audio_play_sound(snd_gb_charge, 0, 0);
alarm[1] = _time_intro + _time_fire_delay;
