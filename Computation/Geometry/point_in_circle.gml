#define point_in_circle
/// point_in_circle(px,py,cx,cy,rad)
//
//  Returns true if the given test point is
//  within the given circle, false otherwise.
//
//      px,py       test point
//      cx,cy       center of the circle
//      rad         radius of the circle
//
/// GMLscripts.com/license
{
    return (point_distance(argument0, argument1, argument2, argument3) <= argument4);
}

