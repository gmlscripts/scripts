/// @func   draw_sprite_stretched_direction(sprite, subimg, x, y, scale, dir)
///
/// @desc   Draws a sprite scaled along an arbitrary axis.
///         The sprite can be stretched or compressed.
///
/// @param  {sprite}    sprite      sprite index
/// @param  {real}      subimg      image index
/// @param  {real}      x           x position
/// @param  {real}      y           y position
/// @param  {real}      scale       scale of stretch
/// @param  {real}      dir         direction of stretch in degrees
///
/// @return {reael}    0 (unused)
///
/// GMLscripts.com/license

function draw_sprite_stretched_direction(sprite, subimg, x, y, scale, dir)
{
    matrix_stack_push(matrix_build(x, y, 0, 0, 0, dir, 1, 1, 1));
    matrix_stack_push(matrix_build(0, 0, 0, 0, 0, -dir, scale, 1, 1));
    matrix_set(matrix_world, matrix_stack_top());
    draw_sprite(sprite, subimg, 0, 0);
    matrix_stack_pop();
    matrix_stack_pop();
    matrix_set(matrix_world, matrix_stack_top());
    return 0;
}