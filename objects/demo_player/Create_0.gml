_buffer=buffer_base64_decode(Flag_Get(FLAG_TYPE.DEMO,FLAG_DEMO.DATA,""));
_seed=0;
_input_number=0;
_input_list=ds_list_create();
_frame_number=0;
_frame_current=0;
_paused=false;
_fps=0;
_icon_show_tick=0;
_show_info_window_title = true;
_show_icon = false;
depth=DEPTH_UI.FADER-100;
if(buffer_get_size(_buffer)>0){
	_seed=buffer_read(_buffer,buffer_u32);
	random_set_seed(_seed);
	_input_number=buffer_read(_buffer,buffer_u8);
	repeat(_input_number){
		var input=buffer_read(_buffer,buffer_u8);
		ds_list_add(_input_list,input);
	}
	_frame_number=buffer_read(_buffer,buffer_u32);
}else{
	instance_destroy();
}