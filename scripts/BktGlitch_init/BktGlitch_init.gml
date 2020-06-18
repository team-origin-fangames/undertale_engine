/// @description  BktGlitch_init()
/// @function  BktGlitch_init
/*
    Initialises the shader, run at the start of the game!
*/

enum bktGlitch {
    lineSpeed,
    lineShift,
    lineResolution,
    lineVertShift,
    lineDrift,
    jumbleSpeed,
    jumbleShift,
    jumbleResolution,
    jumbleness,
    dispersion,
    channelShift,
    noiseLevel, 
    shakiness,
    rngSeed,
    intensity,
    time,
    resolution,
};

enum BktGlitchPreset {
    A,
    B,
    C,
    D,
    E
};

global.bktGlitchUniform[bktGlitch.lineSpeed] = shader_get_uniform(shdBktGlitch, "lineSpeed");
global.bktGlitchUniform[bktGlitch.lineDrift] = shader_get_uniform(shdBktGlitch, "lineDrift");
global.bktGlitchUniform[bktGlitch.lineResolution] = shader_get_uniform(shdBktGlitch, "lineResolution");
global.bktGlitchUniform[bktGlitch.lineVertShift] = shader_get_uniform(shdBktGlitch, "lineVertShift");
global.bktGlitchUniform[bktGlitch.lineShift] = shader_get_uniform(shdBktGlitch, "lineShift");   
global.bktGlitchUniform[bktGlitch.jumbleness] = shader_get_uniform(shdBktGlitch, "jumbleness"); 
global.bktGlitchUniform[bktGlitch.jumbleResolution] = shader_get_uniform(shdBktGlitch, "jumbleResolution");   
global.bktGlitchUniform[bktGlitch.jumbleShift] = shader_get_uniform(shdBktGlitch, "jumbleShift");  
global.bktGlitchUniform[bktGlitch.jumbleSpeed] = shader_get_uniform(shdBktGlitch, "jumbleSpeed");    
global.bktGlitchUniform[bktGlitch.dispersion] = shader_get_uniform(shdBktGlitch, "dispersion");
global.bktGlitchUniform[bktGlitch.channelShift] = shader_get_uniform(shdBktGlitch, "channelShift"); 
global.bktGlitchUniform[bktGlitch.noiseLevel] = shader_get_uniform(shdBktGlitch, "noiseLevel");   
global.bktGlitchUniform[bktGlitch.shakiness] = shader_get_uniform(shdBktGlitch, "shakiness");
global.bktGlitchUniform[bktGlitch.rngSeed] = shader_get_uniform(shdBktGlitch, "rngSeed");
global.bktGlitchUniform[bktGlitch.intensity] = shader_get_uniform(shdBktGlitch, "intensity"); 
global.bktGlitchUniform[bktGlitch.time] = shader_get_uniform(shdBktGlitch, "time");   
global.bktGlitchUniform[bktGlitch.resolution] = shader_get_uniform(shdBktGlitch, "resolution");

