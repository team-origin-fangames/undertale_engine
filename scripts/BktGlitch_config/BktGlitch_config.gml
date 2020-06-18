/// @description  BktGlitch_config(lineShift, lineSpeed, lineResolution, lineDrift, lineVerticalShift, jumbleness, jumbleSpeed, jumbleResolution, jumbleShift, noiseLevel, channelShift, channelDispersion, shakiness, intensity, rngSeed, time)
/// @function  BktGlitch_config
/// @param lineShift
/// @param  lineSpeed
/// @param  lineResolution
/// @param  lineDrift
/// @param  lineVerticalShift
/// @param  jumbleness
/// @param  jumbleSpeed
/// @param  jumbleResolution
/// @param  jumbleShift
/// @param  noiseLevel
/// @param  channelShift
/// @param  channelDispersion
/// @param  shakiness
/// @param  intensity
/// @param  rngSeed
/// @param  time
/*
    One-liner that configures almost all properties of the shader. 
    
    Resolution needs to be set separately.
    
    ONLY RUN WHILE THE SHADER IS ACTIVE!
*/

BktGlitch_set_line_shift(argument0);
BktGlitch_set_line_speed(argument1);
BktGlitch_set_line_resolution(argument2);
BktGlitch_set_line_drift(argument3);
BktGlitch_set_line_vertical_shift(argument4);
BktGlitch_set_jumbleness(argument5);
BktGlitch_set_jumble_speed(argument6);
BktGlitch_set_jumble_resolution(argument7);
BktGlitch_set_jumble_shift(argument8);
BktGlitch_set_noise_level(argument9);
BktGlitch_set_channel_shift(argument10);
BktGlitch_set_channel_dispersion(argument11);
BktGlitch_set_shakiness(argument12);
BktGlitch_set_intensity(argument13);
BktGlitch_set_rng_seed(argument14);
BktGlitch_set_time(argument15);
