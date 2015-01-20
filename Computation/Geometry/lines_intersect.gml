#define lines_intersect
/// lines_intersect(x1,y1,x2,y2,x3,y3,x4,y4,segment)
//
//  Returns a vector multiplier (t) for an intersection on the
//  first line. A value of (0 < t <= 1) indicates an intersection 
//  within the line segment, a value of 0 indicates no intersection, 
//  other values indicate an intersection beyond the endpoints.
//
//      x1,y1,x2,y2     1st line segment
//      x3,y3,x4,y4     2nd line segment
//      segment         If true, confine the test to the line segments.
//
//  By substituting the return value (t) into the parametric form
//  of the first line, the point of intersection can be determined.
//  eg. x = x1 + t * (x2 - x1)
//      y = y1 + t * (y2 - y1)
//
/// GMLscripts.com/license
{
    var ua, ub, ud, ux, uy, vx, vy, wx, wy;
    ua = 0;
    ux = argument2 - argument0;
    uy = argument3 - argument1;
    vx = argument6 - argument4;
    vy = argument7 - argument5;
    wx = argument0 - argument4;
    wy = argument1 - argument5;
    ud = vy * ux - vx * uy;
    if (ud != 0) 
    {
        ua = (vx * wy - vy * wx) / ud;
        if (argument8) 
        {
            ub = (ux * wy - uy * wx) / ud;
            if (ua < 0 || ua > 1 || ub < 0 || ub > 1) ua = 0;
        }
    }
    return ua;
}

