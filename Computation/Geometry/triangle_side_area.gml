#define triangle_side_area
/// triangle_side_area(side1,side2,side3)
//
//  Returns the area of triangle given the length
//  of three sides. Uses Heron's formula.
//
//      side1           first side, real
//      side2           second side, real
//      side3           third side, real
//
/// GMLscripts.com/license
{
    var s = (argument0 + argument1 + argument2) / 2;
    return sqrt(s * (s-argument0) * (s-argument1) * (s-argument2));
}