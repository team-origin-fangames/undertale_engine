/// @description  BktGlitch_set_line_vertical_shift(shift)
/// @function  BktGlitch_set_line_vertical_shift
/// @param shift
/*
    Sets vertical wave offset (y position) of horizontal lines. 
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineVertShift], abs(argument0));
