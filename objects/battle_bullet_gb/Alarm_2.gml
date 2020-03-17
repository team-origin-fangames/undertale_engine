Anim_Create(id, "image_index", 0, 0, 3, 2, 6);
Anim_Create(id, "_beam_scale", 0, 0, 0, _beam_scale_init, 8);

audio_stop_sound(snd_gb_fire);
audio_play_sound(snd_gb_fire, 0, 0);

audio_stop_sound(snd_gb_fire_echo);
var sound = audio_play_sound(snd_gb_fire_echo, 0, 0);
audio_sound_pitch(sound, 1.2);

Camera_Shake(5, 5, 1, 1, 1, 1);
gamepad_set_vibration(0, 0.5, 0.5);

alarm[3] = 6;
alarm[4] = 8;
alarm[5] = _time_fire_stay + _time_beam_end_delay + 2;
alarm[6] = _time_fire_stay + 2;
alarm[7] = 10;