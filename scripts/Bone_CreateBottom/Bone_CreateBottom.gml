///@arg x
///@arg length
///@arg hspeed
///@arg color
///@arg out
///@arg rot
///@arg auto_destroy
///@arg bottom
///@arg *duration
var X = argument[0];
var LENGTH = argument[1];
var HSPEED = argument[2];
var COLOR = argument[3];
var OUT = argument[4];
var ROT = argument[5];
var DESTROY = argument[6];
var BOTTOM = argument[7];
var DURATION = -1;
if(argument_count >= 9){
	DURATION = argument[8];
}
if(BOTTOM = 0){
	BOTTOM = 2;
}

bone = MakeBoneV(X,battle_board.y+battle_board.down-LENGTH/2-5,LENGTH,HSPEED,0,COLOR,OUT,ROT,DESTROY,BOTTOM,DURATION)