#define draw_self
/// draw_self()
//
//  Draws the assigned sprite of the calling instance, using its 
//  subimage, position, scaling, rotation, and blending settings.
//
/// GMLscripts.com/license
{
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    return 0;
}
