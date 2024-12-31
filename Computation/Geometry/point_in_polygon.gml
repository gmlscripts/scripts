/// @func   point_in_polygon(x, y, polygon)
///
/// @desc   Returns true if test point is inside the given 2D polygon.
///         Polygons are closed figures with edges spanning consecutive
///         vertices. An implicit final edge spans the first and last
///         vertices. 
///
///         Each polygon vertex populates a ds_list in coordinate pairs,
///             ie. { x0,y0,  x1,y1,  x2,y2  ... }
///
/// @param  {real}      x           x coordinate of test point
/// @param  {real}      y           y coordinate of test point
/// @param  {real}      polygon     ds_list of polygon coordinate pairs
///
/// @return {boolean}   true if test point is inside the polygon
///
/// GMLscripts.com/license

function point_in_polygon(x, y, polygon)
{
    var x0 = x;
    var y0 = y;
    var inside = false;
    
    var polyX, polyY;
    var n = ds_list_size(polygon) div 2;
    for (var i=0; i<n; i+=1)
    {
        polyX[i] = ds_list_find_value(polygon, 2*i);
        polyY[i] = ds_list_find_value(polygon, 2*i+1);
    }
    polyX[n] = polyX[0];
    polyY[n] = polyY[0];
    
    var x1, y1, x2, y2;
    for (var i=0; i<n; i+=1)
    {
        x1 = polyX[i];
        y1 = polyY[i];
        x2 = polyX[i+1];
        y2 = polyY[i+1];
        
        if ((y2 > y0) != (y1 > y0)) 
        {
            inside ^= (x0 < (x1-x2) * (y0-y2) / (y1-y2) + x2);
        }       
    }
    return inside;
}