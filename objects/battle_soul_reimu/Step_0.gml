var STATE=Battle_GetState();
if(STATE==BATTLE_STATE.TURN_PREPARATION||STATE==BATTLE_STATE.IN_TURN){
	if(follow_board){
		x+=battle_board.x-battle_board.xprevious;
		y+=battle_board.y-battle_board.yprevious;
	}
	
	while(position_meeting(x+sprite_width/2,y,block)){
		x-=0.01;
	}
	while(position_meeting(x-sprite_width/2,y,block)){
		x+=0.01;
	}
	while(position_meeting(x,y+sprite_height/2,block)){
		y-=0.01;
	}
	while(position_meeting(x,y-sprite_height/2,block)){
		y+=0.01;
	}
}

//无敌时间闪烁
if(_inv>0){
	_inv-=1;
}else{
	if(image_speed!=0){
		image_speed=0;
		image_index=0;
	}
}

if (Battle_GetState() == BATTLE_STATE.IN_TURN && moveable)
{
	var SPD=Player_GetSpdTotal()
	if (Input_IsHeld(INPUT.CANCEL))
	{
		SPD = SPD / 2;
		_show_collision_point = true;
	}
	repeat(SPD*10){
		if(Input_IsHeld(INPUT.UP)){
			if(!position_meeting(x,y-sprite_height/2,block)){
				y-=0.1;
			}
		}
		if(Input_IsHeld(INPUT.DOWN)){
			if(!position_meeting(x,y+sprite_height/2,block)){
				y+=0.1;
			}
		}
		if(Input_IsHeld(INPUT.LEFT)){
			if(!position_meeting(x-sprite_width/2,y,block)){
				x-=0.1;
			}
			image_index = 1;
			image_xscale = 1;
		}
		if(Input_IsHeld(INPUT.RIGHT)){
			if(!position_meeting(x+sprite_width/2,y,block)){
				x+=0.1;
			}
			image_index = 1;
			image_xscale = - 1;
		}
	}
	
	if ((!Input_IsHeld(INPUT.RIGHT) && !Input_IsHeld(INPUT.LEFT)) || (Input_IsHeld(INPUT.RIGHT) && Input_IsHeld(INPUT.LEFT)))
	{
		image_index = 0;
		image_xscale = 1;
	}
	if (!Input_IsHeld(INPUT.CANCEL))
	{
		_show_collision_point = false;
	}
}

if (window_get_caption() != "東方地底伝 ~ Legacy of Underground Kingdom")
{
	window_set_caption("東方地底伝 ~ Legacy of Underground Kingdom");
}