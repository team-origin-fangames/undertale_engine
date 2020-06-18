//////////////////////////////////
//                              //
//   BktGlitch 1.2              //
//    Written by Blokatt        //
//     (Jan Vorisek)            //
//      @blokatt | blokatt.net  //
//       jan@blokatt.net        //
//        26/12/2017            //
//                              //
//////////////////////////////////

/*

See Draw GUI of objControl for setup instructions.
Easier example available in objSimpleExample, change the room order to see it in action.

I recommend you use the provided setup GML scripts (see "BktGlitch" in Scripts) to control the
shader rather then accessing the uniforms directly, this requires you run "BktGlitch_init()"
at the start of the game. 

If you don't want to set over 10 properties manually, you can use one of the available presets - see "BktGlitch_config_preset()".

Changes:

1.1 - increased compatibility with mobile devices
1.2 - added a version of without precision specifications due to issues on OS X

*/
#define PI 3.14159265359
#define TAU 6.28318530718

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

//MAIN CONTROLLER UNIFORMS
uniform float intensity;       //overall effect intensity, 0-1 (no upper limit)
uniform float time;            //global timer variable
uniform vec2  resolution;      //screen resolution, vector
uniform float rngSeed;         //seed offset (changes configuration around)

//TUNING
uniform float lineSpeed;       //line speed
uniform float lineDrift;       //horizontal line drifting
uniform float lineResolution;  //line resolution
uniform float lineVertShift;   //wave phase offset of horizontal lines
uniform float lineShift;       //horizontal shift
uniform float jumbleness;      //amount of "block" glitchiness
uniform float jumbleResolution;//ŕesolution of blocks
uniform float jumbleShift;     //texture shift by blocks  
uniform float jumbleSpeed;     //speed of block variation
uniform float dispersion;      //color channel horizontal dispersion
uniform float channelShift;    //horizontal RGB shift
uniform float noiseLevel;      //level of noise
uniform float shakiness;       //horizontal shakiness
//

vec2 resRatios = normalize(resolution);
float tm = abs(time);

//colour extraction

vec4 extractRed(vec4 col){
    return vec4(col.r, 0., 0., col.a);
}

vec4 extractGreen(vec4 col){
    return vec4(0., col.g, 0., col.a);
}

vec4 extractBlue(vec4 col){
    return vec4(0., 0., col.b, col.a);
}

//coord manipulation

float saw(float v, float d){
    return mod(v, d) * (d - floor(mod(v, d * 2.0)) * (d * 2.0)) + floor(mod(v, d * 2.0)); 
}

vec2 vec2LockIn(vec2 v){
    return vec2(saw(v.x, 1.), saw(v.y, 1.));
}

vec2 shiftX(vec2 vec, float offset){
    return vec2LockIn(vec2(vec.x + offset, vec.y));
}

float tMod(float v, float d){
    return mod(mod(v, d) + d, d); 
}

float downsample(float v, float res){
    if (res == 0.0) return 0.0;
    return floor(v * res) / res;
}

//RNG function (uses improved version by Andy Gryc)

float rand(vec2 co)
{
    //highp vec2 _co = co + 1. + rngSeed;
    vec2 _co = vec2(mod(co.x, resolution.x), mod(co.y, resolution.y));
    float a = 12.9898;
    float b = 78.233;
    float c = 43758.5453;
    float dt= dot(_co.xy, vec2(a,b));
    float sn= mod(dt + rngSeed * .0001,3.14);
    return fract(sin(sn) * c);
}

//jumble generation

float jumble(vec2 coord, float randOffset, float Resolution){
    vec2 jumbleSubRes = vec2(Resolution, Resolution);
    vec2 gridCoords = vec2(downsample(coord.x, jumbleSubRes.x / resRatios.y), downsample(coord.y, jumbleSubRes.y / resRatios.x));
    vec2 gridCoordsSeed = vec2(downsample(coord.y, jumbleSubRes.x / resRatios.x), downsample(coord.x, jumbleSubRes.y / resRatios.y));
    vec2LockIn(gridCoords);
    vec2LockIn(gridCoordsSeed);
    float shift = rand(randOffset + gridCoords + downsample(tm * .02 + intensity, jumbleSpeed));
    return ((((shift - .5)) * downsample(intensity, 10.) * jumbleShift) * floor(rand(randOffset + gridCoordsSeed + downsample(tm * .02 + intensity, jumbleSpeed)) + jumbleness));
}

void main()
{
    vec4 outColour;
    vec2 coords = v_vTexcoord;
    
    //base line shift
    float dY = downsample(v_vTexcoord.y, 50. * lineResolution);
    float wave0 = sin((downsample(rand(vec2(dY, dY)) * TAU, 50. * lineResolution) * 80. + tm * lineSpeed) + lineVertShift * TAU);
    dY = downsample(v_vTexcoord.y, 25. * lineResolution);
    float wave1 = cos((downsample(rand(vec2(dY, dY)) * TAU, 25. * lineResolution) * 80. + tm * lineSpeed) + lineVertShift * TAU);
    float driftSin = resolution.y * 2.778;
    coords = shiftX(coords,(wave0 * (1. + rand(vec2(wave0, wave0)) * shakiness) +
                            wave1 * (1. + rand(vec2(wave1, wave1)) * shakiness) +
                            sin((v_vTexcoord.y * (driftSin) + 2. + tm * lineSpeed) + lineVertShift * TAU) * lineDrift + 
                            rand(coords + tm) * lineSpeed * shakiness + 
                            cos((v_vTexcoord.y * (driftSin * .1) + 1. + tm * lineSpeed) + lineVertShift * TAU) * lineDrift) * lineShift * intensity);
    
    //jumbles
    coords.y += jumble(coords, 0., jumbleResolution * 100.) * intensity * .25;
    coords.x += jumble(coords, .25, jumbleResolution * 100.) * intensity * .25;
    
    //avoid coord clamping
    coords = vec2LockIn(coords); 
    
    //channel split
    outColour = extractRed(texture2D( gm_BaseTexture, shiftX(coords, (channelShift + rand(coords) * dispersion) * intensity))) +
                extractBlue(texture2D( gm_BaseTexture, shiftX(coords, -(channelShift + rand(coords) * dispersion) * intensity))) +
                extractGreen(texture2D( gm_BaseTexture, coords));
    
    //add noise
    outColour.r *= 1. + (rand(tm * coords * 2.)) * intensity * noiseLevel * .55;
    outColour.g *= 1. + (rand(tm * coords)) * intensity * noiseLevel * .5;
    outColour.b *= 1. + (rand(tm * coords * 3.)) * intensity * noiseLevel * .4;
    
    //set fragment colour
    gl_FragColor = v_vColour * outColour;
}

