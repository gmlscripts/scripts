#define shader_set_uniform_rgba
/// shader_set_uniform_rgba(uniform,r,g,b,a)
//  GM:S v2.3+ compatible
//
//  Sets a vec4 shader uniform with red, green, blue, and alpha values.
//
//  @param uniform     shader uniform handle, integer
//  @param r           red given in [0,255] range, integer
//  @param g           green given in [0,255] range, integer
//  @param b           blue given in [0,255] range, integer
//  @param alpha       alpha in [0,1] range, real
//
/// GMLscripts.com/license
function shader_set_uniform_rgba(uniform,r,g,b,a) {
    shader_set_uniform_f(uniform,
                         r / 255,
                         g / 255,
                         b / 255,
                         a);
    return 0;
}