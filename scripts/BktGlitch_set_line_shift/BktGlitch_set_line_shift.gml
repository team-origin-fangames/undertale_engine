/// @description  BktGlitch_set_line_shift(offset)
/// @function  BktGlitch_set_line_shift
/// @param offset
/*
    Sets base horizontal line offset.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineShift], abs(argument0));
