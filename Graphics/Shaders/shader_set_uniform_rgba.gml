#define shader_set_uniform_rgba
/// shader_set_uniform_rgba(uniform,r,g,b,a)
//
//  Sets a vec4 shader uniform with red, green, blue, and alpha values.
//
//      uniform     shader uniform handle, integer
//      r           red given in [0,255] range, integer
//      g           green given in [0,255] range, integer
//      b           blue given in [0,255] range, integer
//      alpha       alpha in [0,1] range, real
//
/// GMLscripts.com/license
{
    shader_set_uniform_f(argument0,
                         argument1 / 255,
                         argument2 / 255,
                         argument3 / 255,
                         argument4);
    return 0;
}