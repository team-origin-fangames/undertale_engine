/// @description  BktGlitch_set_line_resolution(resolution)
/// @function  BktGlitch_set_line_resolution
/// @param resolution
/*
    Sets resolution of horizontal lines.
    Range based around 0-1, no upper limit.
    Less = more blocky
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.lineResolution], abs(argument0));
