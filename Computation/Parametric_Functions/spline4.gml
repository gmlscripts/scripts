#define spline4
/// spline4(t,knot1,knot2,knot3,knot4)
//  GM:S v2.3+ compatible
//
//  Returns the Catmull-Rom interpolation of the given 
//  knot values at the given parameter position. 
//
//  @param t           interpolation parameter [0..1], real
//      knot1-4     knot values of spline, real
//
//  This is an optimized version of spline() for the special
//  case of four knots. See spline() for more details.
//
/// GMLscripts.com/license
function spline4(t,knot1,knot2,knot3,knot4) {
    var k0, k3, c3, c2, c1, c0;
    if (t <= 0) return knot2;
    if (t >= 1) return knot3;
    k0 = -0.5 * knot1;
    k3 = 0.5 * knot4;
    c3 = k0 + 1.5 * knot2 - 1.5 * knot3 + k3;
    c2 = knot1 - 2.5 * knot2 + 2 * knot3 - k3;
    c1 = k0 + 0.5 * knot3;
    c0 = knot2;
    return ((c3 * t + c2) * t + c1) * t + c0;
}