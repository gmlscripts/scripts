/// @func   draw_self_inverted()
///
/// @desc   Draws an instance sprite with inverted colors.
///         The drawn sprite will respect the transformation
///         and blending settings of the instance.
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_self_inverted()
{
    var w = sprite_get_width(sprite_index);
    var h = sprite_get_height(sprite_index);
    var xo = sprite_get_xoffset(sprite_index);
    var yo = sprite_get_yoffset(sprite_index);
    var a = draw_get_alpha();
    var b = gpu_get_blendmode_ext();

    matrix_stack_push(matrix_build(x, y, 0, 0, 0, image_angle, 1, 1, 1));
    matrix_stack_push(matrix_build(0, 0, 0, 0, 0, 0, image_xscale, image_yscale, 1));
    matrix_stack_push(matrix_build(-xo, -yo, 0, 0, 0, 0, 1, 1, 1));
    matrix_set(matrix_world, matrix_stack_top());

    draw_set_alpha(0);
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0, 0, w, h, c_white, c_white, c_white, c_white, false);
    gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_alpha);
    draw_sprite_ext(sprite_index, image_index, xo, yo, 1, 1, 0, image_blend, image_alpha);
    gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_color);
    draw_rectangle_color(0, 0, w, h, c_white, c_white, c_white, c_white, false);
    gpu_set_blendmode_ext(b);
    draw_set_alpha(a);

    matrix_stack_pop();
    matrix_stack_pop();
    matrix_stack_pop();
    matrix_set(matrix_world, matrix_stack_top());

    return 0;
}