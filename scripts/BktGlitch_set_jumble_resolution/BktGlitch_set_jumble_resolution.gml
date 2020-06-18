/// @description  BktGlitch_set_jumble_resolution(resolution)
/// @function  BktGlitch_set_jumble_resolution
/// @param resolution
/*
    Sets resolution of glitch blocks. 
    Range based around 0-1, no upper limit.
    Higher = smaller blocks
    0 = entire texture is a single block
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleResolution], abs(argument0));
