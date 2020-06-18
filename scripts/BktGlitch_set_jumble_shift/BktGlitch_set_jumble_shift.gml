/// @description  BktGlitch_set_jumble_shift(shift)
/// @function  BktGlitch_set_jumble_shift
/// @param shift
/*
    Sets level of texture offset in glitch blocks.
    Range based around 0-1, no upper limit.
    Higher = more "scrambled" look
    0 = no shift at all, blocks not visible
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleShift], abs(argument0));
