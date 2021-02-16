#define map_objects
/// map_objects(map)
//  GM:S v2.3+ compatible
//
//  Fills a given map data structure with the id values of all
//  object resources, keyed by strings of their names.
//
//  @param map         map data structure, real
//
/// GMLscripts.com/license
function map_objects(map) {
    var no,i,ds_;
    ds_map = map;
    no = object_add();
    object_delete(no);
    for (i=0; i<no; i+=1) {
        if (object_exists(i)) {
            ds_map_add(ds_map,object_get_name(i),i);
        }
    }
    return 0;
}