/// @description  BktGlitch_set_channel_dispersion(dispersion)
/// @function  BktGlitch_set_channel_dispersion
/// @param dispersion
/*
    Sets level of horizontal noisy RGB channel dispersion.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.dispersion], abs(argument0));
