/// @func   draw_sprite_shear_ext(sprite, subimg, x, y, xshear, yshear, xscale, yscale, rot, color, alpha)
///
/// @desc   Draws a given sprite with standard transformations and shearing applied.
///
/// @param  {sprite}    sprite      sprite index
/// @param  {real}      subimg      image index
/// @param  {real}      x           x screen position
/// @param  {real}      y           y screen position
/// @param  {real}      xshear      shear rate of x axis
/// @param  {real}      yshear      shear rate of y axis
/// @param  {real}      xscale      x scaling
/// @param  {real}      yscale      y scaling
/// @param  {real}      rot         rotation angle
/// @param  {color}     color       color blending
/// @param  {real}      alpha       alpha blending
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_sprite_shear_ext(sprite, subimg, x, y, xshear, yshear, xscale, yscale, rot, color, alpha)
{
    var mShear = matrix_build_identity();
    mShear[4] = xshear;
    mShear[1] = yshear;
    mShear[12] = x;
    mShear[13] = y;

    matrix_stack_push(mShear);
    matrix_set(matrix_world, matrix_stack_top());
    draw_sprite_ext(sprite, subimg, 0, 0, xscale, yscale, rot, color, alpha);
    matrix_stack_pop();
    matrix_set(matrix_world, matrix_stack_top());

    return 0;
}