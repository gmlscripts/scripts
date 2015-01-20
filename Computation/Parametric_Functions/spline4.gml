#define spline4
/// spline4(t,knot1,knot2,knot3,knot4)
//
//  Returns the Catmull-Rom interpolation of the given 
//  knot values at the given parameter position. 
//
//      t           interpolation parameter [0..1], real
//      knot1-4     knot values of spline, real
//
//  This is an optimized version of spline() for the special
//  case of four knots. See spline() for more details.
//
/// GMLscripts.com/license
{
    var k0, k3, c3, c2, c1, c0;
    if (argument0 <= 0) return argument2;
    if (argument0 >= 1) return argument3;
    k0 = -0.5 * argument1;
    k3 = 0.5 * argument4;
    c3 = k0 + 1.5 * argument2 - 1.5 * argument3 + k3;
    c2 = argument1 - 2.5 * argument2 + 2 * argument3 - k3;
    c1 = k0 + 0.5 * argument3;
    c0 = argument2;
    return ((c3 * argument0 + c2) * argument0 + c1) * argument0 + c0;
}