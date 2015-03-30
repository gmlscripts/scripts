#define shader_set_uniform_color
/// shader_set_uniform_color(uniform,color,alpha)
//
//  Sets a vec4 shader uniform with a color and alpha value.
//
//      uniform     shader uniform handle, integer
//      color       standard GM color value, integer
//      alpha       alpha in [0,1] range, real
//
/// GMLscripts.com/license
{
    shader_set_uniform_f(argument0, 
                         color_get_red(argument1) / 255, 
                         color_get_green(argument1) / 255,
                         color_get_blue(argument1) / 255,
                         argument2);
    return 0;
}