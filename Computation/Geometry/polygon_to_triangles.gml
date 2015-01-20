#define polygon_to_triangles
/// polygon_to_triangles(polygon)
//
//  Returns a list of triangles created from a given 2D polygon.
//
//      polygon     ds_list of an ordered series of coordinate 
//                  pairs defining the shape of a polygon
//
//  The polygon vertices are given and returned in traditional
//  counter-clockwise order. Polygons are closed figures with edges
//  spanning consecutive vertices and from the last vertex to the
//  first. Polygons must be simple, which means they cannot have 
//  edges that cross one another. The number of triangles created
//  is (n-2), where n is the number of vertices in the polygon.
//
//  eg. in:  square polygon = { 100,100,  100,200,  200,200,  200,100 }
//
//      out: two triangles = { 100,100,  100,200,  200,100,   
//                             100,200,  200,200,  200,100 } 
//
//  Depends on lines_intersect() and point_in_triangle().
//
/// GMLscripts.com/license
{
    var polygon, polygonSize, triangles, points, polyX, polyY, good;
    var i, j, n, p, A, B, C, x0, y0, x1, y1, x2, y2, x3, y3, x4, y4;
    polygon = argument0;
    polygonSize = ds_list_size(polygon) div 2;
    triangles = ds_list_create();
    points = ds_list_create();
    polyX = ds_list_create();
    polyY = ds_list_create();
    
    i = 0;
    repeat (polygonSize) 
    {
        ds_list_add(polyX, ds_list_find_value(polygon, i));
        ds_list_add(polyY, ds_list_find_value(polygon, i+1));
        i += 2;
    }
    
    // 1. For (n - 3) vertices
    n = polygonSize;
    for (n = polygonSize; n > 3; n -= 1) 
    {
        //  a. Select first point (random)    
        ds_list_clear(points);
        for (p = 0; p < n; p += 1) ds_list_add(points, p);
        repeat (p) 
        {
            i = floor(random(ds_list_size(points)));
            A = ds_list_find_value(points, i);
            ds_list_delete(points, i);
            
            //  b. Pick the next two points
            B = (A + 1) mod n;
            C = (A + 2) mod n;
            
            //  c. Make a triangle with the selected points
            x0 = ds_list_find_value(polyX, A);
            y0 = ds_list_find_value(polyY, A);
            x1 = ds_list_find_value(polyX, B);
            y1 = ds_list_find_value(polyY, B);
            x2 = ds_list_find_value(polyX, C);
            y2 = ds_list_find_value(polyY, C);
            
            //  d. If triangle is counter-clockwise...
            if ((x1 - x0) * (y2 - y0) + (y0 - y1) * (x2 - x0) < 0)
            {
                good = true;
                //  ...and if triangle has no vertices within it...
                for (i = 0; i < n; i += 1) 
                {
                    if ((i != A) && (i != B) && (i != C)) 
                    {
                        x3 = ds_list_find_value(polyX, i);
                        y3 = ds_list_find_value(polyY, i);
                        if (point_in_triangle(x3, y3, x0, y0, x1, y1, x2, y2)) 
                        { 
                            good = false; 
                            break; 
                        }
                        //  ...and if the new edge has no other edges crossing it...
                        j = (i + 1) mod n;
                        if ((j != A) && (j != B) && (j != C)) 
                        {
                            x4 = ds_list_find_value(polyX, j);
                            y4 = ds_list_find_value(polyY, j);

                            if (lines_intersect(x0, y0, x2, y2, x3, y3, x4, y4, true) != 0)
                            { 
                                good = false; 
                                break; 
                            }
                        }
                    }
                }
                
                //  e.  ...then add the triangle to list and remove the unshared vertex
                if (good) 
                {
                    ds_list_add(triangles, x0);
                    ds_list_add(triangles, y0);
                    ds_list_add(triangles, x1);
                    ds_list_add(triangles, y1);
                    ds_list_add(triangles, x2);
                    ds_list_add(triangles, y2);
                    ds_list_delete(polyX, B);
                    ds_list_delete(polyY, B);
                    break;
                }
            }
        }
    }
    
    //  2. There are only three vertices left, so add the final triangle to the list
    ds_list_add(triangles, ds_list_find_value(polyX, 0));
    ds_list_add(triangles, ds_list_find_value(polyY, 0));
    ds_list_add(triangles, ds_list_find_value(polyX, 1));
    ds_list_add(triangles, ds_list_find_value(polyY, 1));
    ds_list_add(triangles, ds_list_find_value(polyX, 2));
    ds_list_add(triangles, ds_list_find_value(polyY, 2));
    
    //  3. Clean up
    ds_list_destroy(polyX);
    ds_list_destroy(polyY);
    ds_list_destroy(points);
    
    return triangles;
}

