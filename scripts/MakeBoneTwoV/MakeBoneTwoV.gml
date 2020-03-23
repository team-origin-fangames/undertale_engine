///@arg x
///@arg y
///@arg hspeed
///@arg gap
///@arg auto_destroy
///@arg *duration
var X = argument[0];
var Y = argument[1];
var HSPEED = argument[2];
var GAP = argument[3];
var DESTROY = argument[4];
var DURATION = -1;
if(argument_count >= 6){
	DURATION = argument[5];
}

MakeBoneTop(X,Y-battle_board.y+battle_board.up-GAP,HSPEED,BONE.WHITE,0,0,DESTROY,1,DURATION)
MakeBoneBottom(X,battle_board.y+battle_board.down-GAP-Y,HSPEED,BONE.WHITE,0,0,DESTROY,1,DURATION)