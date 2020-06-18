/// @description  BktGlitch_set_line_drift(drift)
/// @function  BktGlitch_set_line_drift
/// @param drift
/*
    Sets added scanline-y drift to horizontal lines.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineDrift], abs(argument0));
