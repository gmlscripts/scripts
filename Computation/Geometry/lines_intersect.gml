/// @func   lines_intersect(x1, y1, x2, y2, x3, y3, x4, y4, segment)
///
/// @desc   Returns a scalar (t) that indicates if two lines or segments intersect.
///         A value of (0 < t <= 1) indicates an intersection within the line segment, 
///         a value of 0 indicates no intersection, other values indicate an 
///         intersection beyond the endpoints.
///
///         The two lines are given by end point coordinate pairs.
///         The first line is {x1,y1}->{x2,y2}, the second is {x3,y3}->{x4,y4}.
///
/// @param  {real}      x1
/// @param  {real}      y1
/// @param  {real}      x2
/// @param  {real}      y2
/// @param  {real}      x3
/// @param  {real}      y3
/// @param  {real}      x4
/// @param  {real}      y4
/// @param  {boolean}   segment     if true, confine test to line segments
///
/// @return {real}      point of intersection
///
/// Note: By substituting the return value (t) into the parametric form
///       of the first line, the point of intersection can be determined.
///       eg. x = x1 + t * (x2 - x1)
///           y = y1 + t * (y2 - y1)
///
/// GMLscripts.com/license

function lines_intersect(x1, y1, x2, y2, x3, y3, x4, y4, segment)
{
    var ua, ub, ud, ux, uy, vx, vy, wx, wy;
    ua = 0;
    ux = x2 - x1;
    uy = y2 - y1;
    vx = x4 - x3;
    vy = y4 - y3;
    wx = x1 - x3;
    wy = y1 - y3;
    ud = vy * ux - vx * uy;
    if (ud != 0) 
    {
        ua = (vx * wy - vy * wx) / ud;
        if (segment) 
        {
            ub = (ux * wy - uy * wx) / ud;
            if (ua < 0 || ua > 1 || ub < 0 || ub > 1) ua = 0;
        }
    }
    return ua;
}