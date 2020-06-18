/// @description  BktGlitch_set_time(time)
/// @function  BktGlitch_set_time
/// @param time
/*
    Passes time variable to the shader, neeeds to change for animation.
    Designed for a variable that increases by one every frame at 60 FPS.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.time], abs(argument0));
