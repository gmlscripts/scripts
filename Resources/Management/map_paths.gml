#define map_paths
/// map_paths(map)
//  GM:S v2.3+ compatible
//
//  Fills a given map data structure with the id values of all
//  path resources, keyed by strings of their names.
//
//  @param map         map data structure, real
//
/// GMLscripts.com/license
function map_paths(map) {
    var no,i,ds_;
    ds_map = map;
    no = path_add();
    path_delete(no);
    for (i=0; i<no; i+=1) {
        if (path_exists(i)) {
            ds_map_add(map,path_get_name(i),i);
        }
    }
    return 0;
}