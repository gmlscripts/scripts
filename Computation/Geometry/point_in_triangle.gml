#define point_in_triangle
/// point_in_triangle(px,py,x1,y1,x2,y2,x3,y3)
//  GM:S v2.3+ compatible
//
//  Returns true if the given test point is
//  within the given triangle, falso otherwise.
//
//      px,py       test point
//      x1,y1       1st point of triangle
//      x2,y2       2nd point of triangle
//      x3,y3       3rd point of triangle
//
/// GMLscripts.com/license
function point_in_triangle(px,py,x1,y1,x2,y2,x3,y3) {
    var a, b, c;
    a = (x1-px)*(y2-py)-(x2-px)*(y1-py);
    b = (x2-px)*(y3-py)-(x3-px)*(y2-py);
    c = (x3-px)*(y1-py)-(x1-px)*(y3-py);
    return (sign(a) == sign(b) && sign(b) == sign(c));
}