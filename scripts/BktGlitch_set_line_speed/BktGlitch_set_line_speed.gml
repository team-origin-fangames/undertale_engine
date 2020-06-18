/// @description  BktGlitch_set_line_speed(speed)
/// @function  BktGlitch_set_line_speed
/// @param speed
/*
    Sets waving speed of horizontal lines.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineSpeed], abs(argument0));
