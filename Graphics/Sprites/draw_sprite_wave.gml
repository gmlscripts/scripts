#define draw_sprite_wave
/// draw_sprite_wave(sprite,subimg,x,y,axis,wavelength,amplitude,phase)
//  GM:S v2.3+ compatible
//
//  Draws a sprite with wave-like distortion. The fractional part of the phase
//  argument controls the wave cycle. A full cycle covers the [0..1] interval.
//
//  @param sprite      sprite index, real
//  @param subimg      sprite subimage, real
//      x,y         position, real
//  @param axis        0 = horizontal wave, 1 = vertical wave, real
//  @param wavelength  length of wave in pixels, real
//  @param amplitude   height of wave in pixels, real
//  @param phase       wave position offset, real
//
/// GMLscripts.com/license
function draw_sprite_wave(sprite,subimg,x,y,axis,wavelength,amplitude,phase) {
    var image,pospos;
    sprite     = sprite;
    image      = subimg;
    posx       = x;
    posy       = y;
    axis       = axis;
    amplitude  = amplitude;
    phase      = phase;
    
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