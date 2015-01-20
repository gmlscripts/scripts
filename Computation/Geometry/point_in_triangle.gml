#define point_in_triangle
/// point_in_triangle(px,py,x1,y1,x2,y2,x3,y3)
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
{
    var a, b, c;
    a = (argument2-argument0)*(argument5-argument1)-(argument4-argument0)*(argument3-argument1);
    b = (argument4-argument0)*(argument7-argument1)-(argument6-argument0)*(argument5-argument1);
    c = (argument6-argument0)*(argument3-argument1)-(argument2-argument0)*(argument7-argument1);
    return (sign(a) == sign(b) && sign(b) == sign(c));
}

