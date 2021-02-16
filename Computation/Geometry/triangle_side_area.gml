#define triangle_side_area
/// triangle_side_area(side1,side2,side3)
//  GM:S v2.3+ compatible
//
//  Returns the area of triangle given the length
//  of three sides. Uses Heron's formula.
//
//  @param side1           first side, real
//  @param side2           second side, real
//  @param side3           third side, real
//
/// GMLscripts.com/license
function triangle_side_area(side1,side2,side3) {
    var s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s-side1) * (s-side2) * (s-side3));
}