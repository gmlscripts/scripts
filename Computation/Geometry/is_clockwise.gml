#define is_clockwise
/// is_clockwise(x1,y1,x2,y2,x3,y3)
//
//  Returns true if the given points are in clockwise
//  order, false otherwise.
//
//      x1, y1      first point
//      x2, y2      second point
//      x3, y3      third point
//
//  Note: For convenience, this script treats the Y-axis 
//  as inverted (ie. +Y points down) which is the normal
//  orientation of GameMaker's default 2D mode.
//
/// GMLscripts.com/license
{
    return (argument2-argument0)*(argument5-argument1)+(argument1-argument3)*(argument4-argument0) > 0;    
}

