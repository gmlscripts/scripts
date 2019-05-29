#define draw_sprite_wave_ext
/// draw_sprite_wave_ext(sprite,subimg,x,y,axis,wavelength,amplitude,phase,xscale,yscale,color,alpha)
//
//  Draws a sprite with wave-like distortion. If scaling is used, 
//  wavelength is also scaled. The fractional part of the phase argument
//  controls the wave cycle. A full cycle covers the [0..1] interval.
//
//      sprite      sprite index, real
//      subimg      sprite subimage, real
//      x,y         position, real
//      axis        0 = horizontal wave, 1 = vertical wave, real
//      wavelength  length of wave in pixels, real
//      amplitude   height of wave in pixels, real
//      phase       wave position offset, real
//      xscale      horizontal scaling, real
//      yscale      vertical scaling, real
//      color       color blending, real
//      alpha       alpha blending, real
//
/// GMLscripts.com/license
{
    var sprite,image,posx,posy,axis,wavelength,amplitude,phase,xscale,yscale,blend,alpha;
    sprite = argument0;
    image = argument1;
    posx = argument2;
    posy = argument3;
    axis = argument4;
    wavelength = argument5;
    amplitude = argument6;
    phase = argument7;
    xscale = argument8;
    yscale = argument9;
    blend = argument10;
    alpha = argument11;

    var width,height,xoff,yoff,size,i,shift,sx,sy;
    width = sprite_get_width(sprite);
    height = sprite_get_height(sprite);
    xoff = sprite_get_xoffset(sprite);
    yoff = sprite_get_yoffset(sprite);
    if (axis) size = height else size = width;

    for (i=0; i<size; i+=1) {
        shift = amplitude*sin(2*pi*((i/wavelength)+phase));
        if (axis) {
            sx = xscale*(shift-xoff)+posx;
            sy = yscale*(i-yoff)+posy;
            draw_sprite_part_ext(sprite,image,0,i,width,1,sx,sy,xscale,yscale,blend,alpha);
        }else{
            sx = xscale*(i-xoff)+posx;
            sy = yscale*(shift-yoff)+posy;
            draw_sprite_part_ext(sprite,image,i,0,1,height,sx,sy,xscale,yscale,blend,alpha);
        }
    }
    return 0;
}