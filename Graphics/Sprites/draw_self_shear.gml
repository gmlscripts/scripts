/// @func   draw_self_shear(xshear, yshear)
///
/// @desc   Draws an instance sprite with shearing applied.
///         The drawn sprite will respect the transformation
///         and blending settings of the instance.
///
/// @param  {real}      xshear      shear rate of x axis
/// @param  {real}      yshear      shear rate of y axis
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_self_shear(xshear, yshear)
{
    var mShear = matrix_build_identity();
    mShear[4] = xshear;
    mShear[1] = yshear;
    mShear[12] = x;
    mShear[13] = y;

    matrix_stack_push(mShear);
    matrix_set(matrix_world, matrix_stack_top());
    draw_sprite_ext(sprite_index, image_index, 0, 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    matrix_stack_pop();
    matrix_set(matrix_world, matrix_stack_top());

    return 0;
}