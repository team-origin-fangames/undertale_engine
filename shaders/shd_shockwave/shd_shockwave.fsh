// https://marketplace.yoyogames.com/assets/261/free-shaders
varying vec2 v_texcoord;

uniform float time;
uniform vec2 position;
uniform vec2 resolution;
uniform float shock_amplitude;
uniform float shock_refraction;
uniform float shock_width;

void main()
{ 
    vec2 uv = v_texcoord;
    uv.x *= (resolution.x/resolution.y);
    
    vec2 texCoord = v_texcoord;  
    
    float centre_x = (position.x / resolution.x) * (resolution.x/resolution.y);
    float centre_y = position.y / resolution.y;
  
    float dist = distance(uv, vec2(centre_x,centre_y));
    
    if ( (dist <= (time + shock_width)) && (dist >= (time - shock_width)) ) 
    {
        float dif = (dist - time); 
        float powDiff = 1.0 - pow(abs(dif*shock_amplitude),shock_refraction); 
        float diffTime = dif  * powDiff;
        vec2 diffUV = normalize(uv - position); 
        texCoord = uv + (diffUV * diffTime);
        texCoord.x *= (resolution.y/resolution.x);
    } 
 
    gl_FragColor = texture2D(gm_BaseTexture,texCoord);
}