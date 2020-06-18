/// @description  BktGlitch_set_intensity(intensity)
/// @function  BktGlitch_set_intensity
/// @param intensity
/*
    Sets overall intensity of the shader.
    Range based around 0-1, no upper limit.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.intensity], abs(argument0));
