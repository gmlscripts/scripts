#define polygon_area
/// polygon_area(polygon)
//
//  Returns the internal area of the given polygon. The value may
//  positive or negative depending on the winding of the polygon.
//
//      polygon     ds_list of an ordered series of coordinate 
//                  pairs defining the shape of a polygon
//
//  Polygons are closed figures with edges spanning consecutive 
//  vertices and from the last vertex to the first. Polygons must be
//  simple, which means they cannot have edges that cross one another.
//
/// GMLscripts.com/license
{
    var a, i, j, x1, y1, x2, y2;
    a = 0;
    j = ds_list_size(argument0);
    for (i=0; i<j div 2; i+=1) 
    {
        x1 = ds_list_find_value(argument0, (2*i)   mod j);
        y1 = ds_list_find_value(argument0, (2*i+1) mod j);
        x2 = ds_list_find_value(argument0, (2*i+2) mod j);
        y2 = ds_list_find_value(argument0, (2*i+3) mod j);
        a += x1 * y2 - x2 * y1;
    }
    return a / 2;
}

