#define point_in_polygon
/// point_in_polygon(x,y,polygon)
//  GM:S v2.3+ compatible
//
//  Returns true if the given test point is inside 
//  the given 2D polygon, false otherwise.
//
//      x,y         coordinates of the test point
//  @param polygon     ds_list of an ordered series of coordinate 
//                  pairs defining the shape of a polygon
//
//  Polygons are closed figures with edges spanning consecutive
//  vertices and from the last vertex to the first.
//
/// GMLscripts.com/license
function point_in_polygon(x,y,polygon) {
    var x0, y0,  inside;
    var n, i, polyX, polyY, x1, y1, x2, y2;
    x0 = x;
    y0 = y;
    inside = false;
    n = ds_list_size(polygon) div 2;
    for (i=0; i<n; i+=1)
    {
        polyX[i] = ds_list_find_value(polygon, 2*i);
        polyY[i] = ds_list_find_value(polygon, 2*i+1);
    }
    polyX[n] = polyX[0];
    polyY[n] = polyY[0];
    for (i=0; i<n; i+=1)
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