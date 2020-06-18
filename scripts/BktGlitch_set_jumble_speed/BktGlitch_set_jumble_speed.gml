/// @description  BktGlitch_set_jumble_speed(jumble speed)
/// @function  BktGlitch_set_jumble_speed
/// @param jumble speed
/*
    Sets speed of jumble variation.
    Range based around 0-1, no upper limit.
    Higher = faster block variation
    0 = no change over time
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.jumbleSpeed], abs(argument0));
