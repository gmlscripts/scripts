#define shader_set_uniform_color
/// shader_set_uniform_color(uniform,color,alpha)
//  GM:S v2.3+ compatible
//
//  Sets a vec4 shader uniform with a color and alpha value.
//
//  @param uniform     shader uniform handle, integer
//  @param color       standard GM color value, integer
//  @param alpha       alpha in [0,1] range, real
//
/// GMLscripts.com/license
function shader_set_uniform_color(uniform,color,alpha) {
    shader_set_uniform_f(uniform, 
                         color_get_red(color) / 255, 
                         color_get_green(color) / 255,
                         color_get_blue(color) / 255,
                         alpha);
    return 0;
}