if(_enabled){
	var SW=(window_get_fullscreen() ? display_get_width() : window_get_width());
	var SH=(window_get_fullscreen() ? display_get_height() : window_get_height());
	var SX=SW/960;
	var SY=SH/540;
	var SF=min(SX,SY);
	display_set_gui_maximize(SF,SF,(SW-960*SF)/2+160*SF,(SH-540*SF)/2+30*SF);
	if(sprite_exists(_sprite_previous)){
		draw_sprite_ext(_sprite_previous,0,(SW-960*SF)/2,(SH-540*SF)/2,960/sprite_get_width(_sprite_previous)*SF,540/sprite_get_height(_sprite_previous)*SF,0,c_white,1);
	}else{
		draw_sprite_ext(spr_pixel,0,(SW-960*SF)/2,(SH-540*SF)/2,SW,SH,0,c_black,1);
	}
	if(sprite_exists(_sprite)){
		draw_sprite_ext(_sprite,0,(SW-960*SF)/2,(SH-540*SF)/2,960/sprite_get_width(_sprite)*SF,540/sprite_get_height(_sprite)*SF,0,c_white,_alpha);
	}else{
		draw_sprite_ext(spr_pixel,0,(SW-960*SF)/2,(SH-540*SF)/2,SW,SH,0,c_black,_alpha);
	}
	
	if (bktglitch_enabled)
	{
		switch (os_device)
		{
			case os_windows:
				shader_set(shdBktGlitch);
				break;
				
			case os_macosx:
				shader_set(shdBktGlitchMac);
				break;
				
			default:
				shader_set(shdBktGlitch);
				break;
		}
		
		BktGlitch_set_resolution_of_application_surface();
		
		BktGlitch_config(bktglitch_line_shift, bktglitch_line_speed, bktglitch_line_resolution, bktglitch_line_drift, bktglitch_line_vertical_shift, bktglitch_jumbleness, bktglitch_jumble_speed, bktglitch_jumble_resolution, bktglitch_jumble_shift, bktglitch_noise_level, bktglitch_channel_shift, bktglitch_channel_dispersion, bktglitch_shakiness, bktglitch_intensity, bktglitch_rng_seed, bktglitch_time);
		
		BktGlitch_set_time(current_time * 0.06)
	}
	
	gpu_set_blendenable(false);
	
	draw_surface_ext(application_surface,(SW-960*SF)/2+160*SF,(SH-540*SF)/2+30*SF,SF,SF,0,c_white,1);
	
	gpu_set_blendenable(true);
	
	shader_reset();
}else{
	var SW=(window_get_fullscreen() ? display_get_width() : window_get_width());
	var SH=(window_get_fullscreen() ? display_get_height() : window_get_height());
	var SX=SW/640;
	var SY=SH/480;
	var SF=min(SX,SY);
	display_set_gui_maximize(SF,SF,(SW-640*SF)/2,(SH-480*SF)/2);
	
	if (bktglitch_enabled)
	{
		switch (os_device)
		{
			case os_windows:
				shader_set(shdBktGlitch);
				break;
				
			case os_macosx:
				shader_set(shdBktGlitchMac);
				break;
				
			default:
				shader_set(shdBktGlitch);
				break;
		}
		
		BktGlitch_set_resolution_of_application_surface();
		
		BktGlitch_config(bktglitch_line_shift, bktglitch_line_speed, bktglitch_line_resolution, bktglitch_line_drift, bktglitch_line_vertical_shift, bktglitch_jumbleness, bktglitch_jumble_speed, bktglitch_jumble_resolution, bktglitch_jumble_shift, bktglitch_noise_level, bktglitch_channel_shift, bktglitch_channel_dispersion, bktglitch_shakiness, bktglitch_intensity, bktglitch_rng_seed, bktglitch_time);
		
		BktGlitch_set_time(current_time * 0.06)
	}
	
	gpu_set_blendenable(false);
	
	draw_surface_ext(application_surface,(SW-640*SF)/2,(SH-480*SF)/2,SF,SF,0,c_white,1);
	
	gpu_set_blendenable(true);
	
	shader_reset();
}