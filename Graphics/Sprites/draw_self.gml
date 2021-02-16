#define draw_self
/// draw_self()
//  GM:S v2.3+ compatible
//
//  Draws the assigned sprite of the calling instance, using its 
//  subimage, position, scaling, rotation, and blending settings.
//
/// GMLscripts.com/license
function draw_self() {
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    return 0;
}