/// @description  BktGlitch_set_jumbleness(jumbleness)
/// @function  BktGlitch_set_jumbleness
/// @param jumbleness
/*
    Sets level of "jumbleness" - glitch blocks.
    Range based around 0-1, no upper limit.
    Higher = more blocks
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleness], abs(argument0));
