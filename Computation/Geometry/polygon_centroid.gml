#define polygon_centroid
/// polygon_centroid(polygon)
//  GM:S v2.3+ compatible
//
//  Returns the centroid of a given 2D polygon as a ds_list
//  containing a coordiate pair. A centroid can be thought
//  of as the center of mass for the polygon. 
//
//  @param polygon     ds_list of an ordered series of coordinate 
//                  pairs defining the shape of a polygon
//
//  Polygons are closed figures with edges spanning consecutive 
//  vertices and from the last vertex to the first. Polygons must be
//  simple, which means they cannot have edges that cross one another.
//
/// GMLscripts.com/license
function polygon_centroid(polygon) {
    var centroid, ai, atmp, xtmp, ytmp, i, j, x1, y1, x2, y2;
    centroid = ds_list_create();
    atmp = 0;
    xtmp = 0;
    ytmp = 0;
    j = ds_list_size(polygon);
    for (i=0; i<j div 2; i+=1) 
    {
        x1 = ds_list_find_value(polygon, (2*i)   mod j);
        y1 = ds_list_find_value(polygon, (2*i+1) mod j);
        x2 = ds_list_find_value(polygon, (2*i+2) mod j);
        y2 = ds_list_find_value(polygon, (2*i+3) mod j);
        ai = x1 * y2 - x2 * y1;
        atmp += ai;
        xtmp += (x2 + x1) * ai;
        ytmp += (y2 + y1) * ai;
    }
    if (atmp != 0) 
    {
        atmp *= 3;
        ds_list_add(centroid, xtmp / atmp);
        ds_list_add(centroid, ytmp / atmp);
    }
    return centroid;
}