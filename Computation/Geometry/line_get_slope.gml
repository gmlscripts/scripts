#define line_get_slope
/// line_get_slope(x1,y1,x2,y2)
//  GM:S v2.3+ compatible
//
//  Returns the slope of the given line. If (x1 == x2),
//  this function will cause a divide by zero error.
//
//      x1, y1      1st point
//      x2, y2      2nd point
//
/// GMLscripts.com/license
function line_get_slope(x1,y1,x2,y2) {
    return ( (y2 - y1) / (x2 - x1) );
}