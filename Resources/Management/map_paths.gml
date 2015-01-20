#define map_paths
/// map_paths(map)
//
//  Fills a given map data structure with the id values of all
//  path resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var no,i,ds_map;
    ds_map = argument0;
    no = path_add();
    path_delete(no);
    for (i=0; i<no; i+=1) {
        if (path_exists(i)) {
            ds_map_add(argument0,path_get_name(i),i);
        }
    }
    return 0;
}