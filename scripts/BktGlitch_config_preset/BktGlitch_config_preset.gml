/// @description  BktGlitch_config_preset(preset)
/// @function  BktGlitch_config_preset
/// @param preset
/*
    Sets a start preset for the shader, in case you don't want to set all uniforms
    manually. Defaults to all-zeroes. 
    
    If you set up a nice configuration in the demo, you can press C to have its code
    generated and copied into the clipboard.
    
    Resolution needs to be set separately.
	
	Presets: 
        BktGlitchPreset.A
        BktGlitchPreset.B
        BktGlitchPreset.C
        BktGlitchPreset.D
        BktGlitchPreset.E    
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

var _preset = argument0;

switch (_preset){
    case BktGlitchPreset.A:       
        BktGlitch_set_intensity(1.000000);
        BktGlitch_set_line_shift(0.004000);
        BktGlitch_set_line_speed(0.010000);
        BktGlitch_set_line_resolution(1.000000);
        BktGlitch_set_line_drift(0.100000);
        BktGlitch_set_line_vertical_shift(0.000000);
        BktGlitch_set_noise_level(0.500000);
        BktGlitch_set_jumbleness(0.200000);
        BktGlitch_set_jumble_speed(0.166667);
        BktGlitch_set_jumble_resolution(.23333333);
        BktGlitch_set_jumble_shift(0.160000);
        BktGlitch_set_channel_shift(0.004000);
        BktGlitch_set_channel_dispersion(0.002500);
        BktGlitch_set_shakiness(0.500000);
        BktGlitch_set_rng_seed(0.000000);
    break;
    
    case BktGlitchPreset.B:       
        BktGlitch_set_intensity(1.000000);
        BktGlitch_set_line_shift(0.011000);
        BktGlitch_set_line_speed(0.166667);
        BktGlitch_set_line_resolution(0.420000);
        BktGlitch_set_line_drift(0.249702);
        BktGlitch_set_line_vertical_shift(0.713333);
        BktGlitch_set_noise_level(0.940000);
        BktGlitch_set_jumbleness(0.273333);
        BktGlitch_set_jumble_speed(0.000000);
        BktGlitch_set_jumble_resolution(.07333333);
        BktGlitch_set_jumble_shift(0.626667);
        BktGlitch_set_channel_shift(0.003333);
        BktGlitch_set_channel_dispersion(0.000000);
        BktGlitch_set_shakiness(1.733333);
        BktGlitch_set_rng_seed(30.000000);
    break;
    
    case BktGlitchPreset.C:   
        BktGlitch_set_intensity(1.000000);
        BktGlitch_set_line_shift(0.001667);
        BktGlitch_set_line_speed(0.020397);
        BktGlitch_set_line_resolution(1.145380);
        BktGlitch_set_line_drift(0.212783);
        BktGlitch_set_line_vertical_shift(0.125946);
        BktGlitch_set_noise_level(1.000000);
        BktGlitch_set_jumbleness(0.660000);
        BktGlitch_set_jumble_speed(0.000000);
        BktGlitch_set_jumble_resolution(.20000000);
        BktGlitch_set_jumble_shift(0.673333);
        BktGlitch_set_channel_shift(0.012000);
        BktGlitch_set_channel_dispersion(0.063333);
        BktGlitch_set_shakiness(3.933333);
        BktGlitch_set_rng_seed(48.294403);
    break;
    
    case BktGlitchPreset.D:   
        BktGlitch_set_intensity(1.000000);
        BktGlitch_set_line_shift(0.001333);
        BktGlitch_set_line_speed(0.023333);
        BktGlitch_set_line_resolution(2.160000);
        BktGlitch_set_line_drift(0.573333);
        BktGlitch_set_line_vertical_shift(0.326667);
        BktGlitch_set_noise_level(1.000000);
        BktGlitch_set_jumbleness(0.660000);
        BktGlitch_set_jumble_speed(0.000000);
        BktGlitch_set_jumble_resolution(.24000000);
        BktGlitch_set_jumble_shift(0.040000);
        BktGlitch_set_channel_shift(0.000667);
        BktGlitch_set_channel_dispersion(0.003333);
        BktGlitch_set_shakiness(2.466667);
        BktGlitch_set_rng_seed(0.000000);
    break;
    
    case BktGlitchPreset.E:   
        BktGlitch_set_intensity(1.000000);
        BktGlitch_set_line_shift(0.001333);
        BktGlitch_set_line_speed(0.250000);
        BktGlitch_set_line_resolution(1.660000);
        BktGlitch_set_line_drift(0.493333);
        BktGlitch_set_line_vertical_shift(0.740000);
        BktGlitch_set_noise_level(0.353333);
        BktGlitch_set_jumbleness(0.300000);
        BktGlitch_set_jumble_speed(25.000000);
        BktGlitch_set_jumble_resolution(.10000000);
        BktGlitch_set_jumble_shift(0.086667);
        BktGlitch_set_channel_shift(0.034667);
        BktGlitch_set_channel_dispersion(0.020000);
        BktGlitch_set_shakiness(2.266667);
        BktGlitch_set_rng_seed(48.666667);
    break;
    
    default:
        BktGlitch_config_zero();
}
