x=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X);
y=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y);
audio_stop_all();

alarm[0]=40;

image_speed = 0;
_ready = false;

if (!Demo_IsPlaying())
{
	Player_SetDeath(Player_GetDeath() + 1);
	show_debug_message("111111");
}