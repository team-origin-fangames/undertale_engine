/// @description  BktGlitch_set_shakiness(shakiness)
/// @function  BktGlitch_set_shakiness
/// @param shakiness
/*
    Sets "shakiness" of horizontal lines.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.shakiness], abs(argument0));
