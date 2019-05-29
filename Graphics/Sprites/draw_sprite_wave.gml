#define draw_sprite_wave
/// draw_sprite_wave(sprite,subimg,x,y,axis,wavelength,amplitude,phase)
//
//  Draws a sprite with wave-like distortion. The fractional part of the phase
//  argument controls the wave cycle. A full cycle covers the [0..1] interval.
//
//      sprite      sprite index, real
//      subimg      sprite subimage, real
//      x,y         position, real
//      axis        0 = horizontal wave, 1 = vertical wave, real
//      wavelength  length of wave in pixels, real
//      amplitude   height of wave in pixels, real
//      phase       wave position offset, real
//
/// GMLscripts.com/license
{
    var sprite,image,posx,posy,axis,wavelength,amplitude,phase;
    sprite     = argument0;
    image      = argument1;
    posx       = argument2;
    posy       = argument3;
    axis       = argument4;
    wavelength = argument5;
    amplitude  = argument6;
    phase      = argument7;

    var width,height,xoff,yoff,size,i,shift,sx,sy;
    width  = sprite_get_width(sprite);
    height = sprite_get_height(sprite);
    xoff   = sprite_get_xoffset(sprite);
    yoff   = sprite_get_yoffset(sprite);
    if (axis) size = height else size = width;

    for (i=0; i<size; i+=1) {
        shift = amplitude*sin(2*pi*((i/wavelength)+phase));
        if (axis) {
            sx = shift-xoff+posx;
            sy = i-yoff+posy;
            draw_sprite_part(sprite,image,0,i,width,1,sx,sy);
        }else{
            sx = i-xoff+posx;
            sy = shift-yoff+posy;
            draw_sprite_part(sprite,image,i,0,1,height,sx,sy);
        }
    }
}