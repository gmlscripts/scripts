/// @func   spline4(t, knot1, knot2, knot3, knot4)
///
/// @desc   Returns the Catmull-Rom interpolation of the given 
///         knot values at the given parameter position. 
///
///         This is an optimized version of spline() for the special
///         case of four knots. See spline() for more details.
///
/// @param  {real}      t           interpolation parameter [0..1]
/// @param  {real}      knot1       1st spline knot value
/// @param  {real}      knot2       2nd spline knot value
/// @param  {real}      knot3       3rd spline knot value
/// @param  {real}      knot4       4th spline knot value
///
/// @return {real}      value on the spline
///
/// GMLscripts.com/license

function spline4(t, knot1, knot2, knot3, knot4)
{
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
