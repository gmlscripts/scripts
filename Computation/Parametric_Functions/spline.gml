/// @func   spline(t, knotlist)
///
/// @desc   Returns the Catmull-Rom interpolation of the given
///         knot values at the given parameter position.
///
///         If (t) is 0, returns knot[2], if (t) is 1, returns knot[N-1],
///         (where 1 is the first knot and N is the last knot). For other
///         values of (t), interpolates smoothly from knot[2] to knot[N-1].
///         The first and last knots determine the derivatives of the spline
///         end points. Because the spline is a cubic polynomial, there must
///         be at least four knots.
///
/// @param  {real}      t           interpolation parameter [0..1]
/// @param  {list}      knotlist    ds_list of spline knot values
///
/// @return {real}      value on the spline
///
/// GMLscripts.com/license

function spline(t, knotlist)
{
    var nknots, nspans, span, k, c3, c2, c1, c0;
    nknots = ds_list_size(knotlist);
    nspans = nknots - 3;
    if (nspans < 1) return 0; // ERROR: too few knots
    t = clamp(t, 0, 1) * nspans;
    span = floor(t);
    if (span >= nknots - 3) span = nknots - 3;
    t -= span;
    k[0] = ds_list_find_value(knotlist,span);
    k[1] = ds_list_find_value(knotlist,span+1);
    k[2] = ds_list_find_value(knotlist,span+2);
    k[3] = ds_list_find_value(knotlist,span+3);
    c3 = -0.5 * k[0] + 1.5 * k[1] - 1.5 * k[2] + 0.5 * k[3];
    c2 = k[0] - 2.5 * k[1] + 2 * k[2] - 0.5 * k[3];
    c1 = -0.5 * k[0] + 0.5 * k[2];
    c0 = k[1];
    return ((c3 * t + c2) * t + c1) * t + c0;
}
