/// @description  BktGlitch_set_resolution_of_application_surface()
/// @function  BktGlitch_set_resolution_of_application_surface
/*
    Passes resolution to the shader set to the size of the application surface.
    In most cases, this is what you'd want to use.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

if (surface_exists(application_surface)){
    shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.resolution], surface_get_width(application_surface), surface_get_height(application_surface));
}
