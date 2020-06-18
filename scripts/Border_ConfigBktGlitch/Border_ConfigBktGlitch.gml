/// @arg line_shift
/// @arg line_speed
/// @arg line_resolution
/// @arg line_drift
/// @arg line_vertical_shift
/// @arg jumbleness
/// @arg jumble_speed
/// @arg jumble_resolution
/// @arg jumble_shift
/// @arg noise_level
/// @arg channel_shift
/// @arg channel_dispersion
/// @arg shakiness
/// @arg intensity
/// @arg rng_seed
/// @arg time

var line_shift = argument[0];
var line_speed = argument[1];
var line_resolution = argument[2];
var line_drift = argument[3];
var line_vertical_shift = argument[4];
var jumbleness = argument[5];
var jumble_speed = argument[6];
var jumble_resolution = argument[7];
var jumble_shift = argument[8];
var noise_level = argument[9];
var channel_shift = argument[10];
var channel_dispersion = argument[11];
var shakiness = argument[12];
var intensity = argument[13];
var rng_seed = argument[14];
var time = argument[15];

border.bktglitch_line_shift = line_shift;
border.bktglitch_line_speed = line_speed;
border.bktglitch_line_resolution = line_resolution;
border.bktglitch_line_drift = line_drift;
border.bktglitch_line_vertical_shift = line_vertical_shift;
border.bktglitch_jumbleness = jumbleness;
border.bktglitch_jumble_speed = jumble_speed;
border.bktglitch_jumble_resolution = jumble_resolution;
border.bktglitch_jumble_shift = jumble_shift;
border.bktglitch_noise_level = noise_level;
border.bktglitch_channel_shift = channel_shift;
border.bktglitch_channel_dispersion = channel_dispersion;
border.bktglitch_shakiness = shakiness;
border.bktglitch_intensity = intensity;
border.bktglitch_rng_seed = rng_seed;
border.bktglitch_time = time;

return true;