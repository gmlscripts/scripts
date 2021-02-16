#define motion_blur
/// motion_blur(length,direction)
//  GM:S v2.3+ compatible
//
//  Draws the assigned sprite of the calling instance, using its
//  subimage, position, scaling, rotation, and blending settings,
//  with a motion blur effect applied to it.
//
//  @param length      length of blur, real
//  @param direction   direction of blur in degrees, real
//
/// GMLscripts.com/license
function motion_blur(length,direction) {
    
    if (length > 0) {
        step = 3;
        dir = degtorad(direction);
        px = cos(dir);
        py = -sin(dir);
        
        a = image_alpha/(length/step);
        if (a >= 1) {
            draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
                image_yscale,image_angle,image_blend,image_alpha);
            a /= 2;
        }
           
        for(i=length;i>=0;i-=step) {
            draw_sprite_ext(sprite_index,image_index,x+(px*i),y+(py*i),
                image_xscale,image_yscale,image_angle,image_blend,a);
        }
    } else {    
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,
            image_yscale,image_angle,image_blend,image_alpha);
    }
    return 0;
}