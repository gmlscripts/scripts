/// @func   draw_sprite_halfpixel(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
///
/// @desc   Draws a sprite transformed about the center of its origin pixel
///         instead of the top-left corner. This can be useful when you require
///         a sprite to maintain the on-screen position of its origin pixel as it
///         is scaled and rotated. Otherwise works the same as draw_sprite_ext().
///
/// @param  {sprite}    sprite      sprite index
/// @param  {real}      subimg      image index
/// @param  {real}      x           x screen position
/// @param  {real}      y           y screen position
/// @param  {real}      xscale      x scaling
/// @param  {real}      yscale      y scaling
/// @param  {real}      rot         rotation angle
/// @param  {color}     color       color blending
/// @param  {real}      alpha       alpha blending
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_sprite_halfpixel(sprite, subimg, x, y, xscale, yscale, rot, color, alpha)
{
    matrix_stack_push(matrix_build(x+0.5, y+0.5, 0, 0, 0, rot, xscale, yscale, 1));
    matrix_stack_push(matrix_build(-0.5, -0.5, 0, 0, 0, 0, 1, 1, 1));
    matrix_set(matrix_world, matrix_stack_top());
    draw_sprite_ext(sprite, subimg, 0, 0, 1, 1, 0, color, alpha);
    matrix_stack_pop();
    matrix_stack_pop();
    matrix_set(matrix_world, matrix_stack_top());
    return 0;
}
