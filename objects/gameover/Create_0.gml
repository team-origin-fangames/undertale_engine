x = Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X);
y = Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y);
image_speed = 0;

_ready_draw = false;
_ready = false;

_gameover_part_0_y = 142;
_gameover_part_1_y = 270;
_gameover_part_0_alpha = 0;
_gameover_part_1_alpha = 0;


audio_stop_all();

if (!Demo_IsPlaying())
{
	Player_SetDeath(Player_GetDeath() + 1);
}

alarm[0] = 40;