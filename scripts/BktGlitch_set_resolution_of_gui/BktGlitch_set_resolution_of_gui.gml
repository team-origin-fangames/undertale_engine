/// @description  BktGlitch_set_resolution_of_gui()
/// @function  BktGlitch_set_resolution_of_gui
/*
    Passes resolution to the shader set to the size of the GUI surface.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

if (surface_exists(application_surface)){
    shader_set_uniform_f(global.bktGlitchUniform[bktGlitch.resolution], display_get_gui_width(), display_get_gui_height());
}
