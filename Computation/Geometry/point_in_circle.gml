#define point_in_circle
/// point_in_circle(px,py,cx,cy,rad)
//  GM:S v2.3+ compatible
//
//  Returns true if the given test point is
//  within the given circle, false otherwise.
//
//      px,py       test point
//      cx,cy       center of the circle
//  @param rad         radius of the circle
//
/// GMLscripts.com/license
function point_in_circle(px,py,cx,cy,rad) {
    return (point_distance(px, py, cx, cy) <= rad);
}