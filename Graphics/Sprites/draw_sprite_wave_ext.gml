#define draw_sprite_wave_ext
/// draw_sprite_wave_ext(sprite,subimg,x,y,axis,wavelength,amplitude,phase,xscale,yscale,color,alpha)
//  GM:S v2.3+ compatible
//
//  Draws a sprite with wave-like distortion. If scaling is used, 
//  wavelength is also scaled. The fractional part of the phase argument
//  controls the wave cycle. A full cycle covers the [0..1] interval.
//
//  @param sprite      sprite index, real
//  @param subimg      sprite subimage, real
//      x,y         position, real
//  @param axis        0 = horizontal wave, 1 = vertical wave, real
//  @param wavelength  length of wave in pixels, real
//  @param amplitude   height of wave in pixels, real
//  @param phase       wave position offset, real
//  @param xscale      horizontal scaling, real
//  @param yscale      vertical scaling, real
//  @param color       color blending, real
//  @param alpha       alpha blending, real
//
/// GMLscripts.com/license
function draw_sprite_wave_ext(sprite,subimg,x,y,axis,wavelength,amplitude,phase,xscale,yscale,color,alpha) {
    var image,posposblend;
    image = subimg;
    posx = x;
    posy = y;
    blend = subimg0;
    alpha = subimg1;
    
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