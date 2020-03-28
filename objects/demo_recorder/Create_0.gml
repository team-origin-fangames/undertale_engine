_buffer=buffer_create(1,buffer_grow,1);
_frame_number=0;
_paused=false;
randomize();
_seed=random_get_seed();
_show_info_window_title = true;
_show_icon = false;
_icon_show_tick=0;
depth=DEPTH_UI.FADER-100;