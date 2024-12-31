/// @func   is_clockwise(x1, y1, x2, y2, x3, y3)
///
/// @desc   Returns true if the given points are in clockwise order.
///
/// @param  {real}      x1          x coordinate of 1st point
/// @param  {real}      y1          y coordinate of 1st point
/// @param  {real}      x2          x coordinate of 2nd point
/// @param  {real}      y2          y coordinate of 2nd point
/// @param  {real}      x3          x coordinate of 3rd point
/// @param  {real}      y3          y coordinate of 3rd point
///
/// @return {boolean}   true if the points are clockwise
///
/// Note: This function inverts the Y-axis, the normal
/// orientation of GameMaker Studio's default 2D mode.
///
/// GMLscripts.com/license

function is_clockwise(x1, y1, x2, y2, x3, y3) 
{
    return (x2-x1) * (y3-y1) + (y1-y2) * (x3-x1) > 0;    
}