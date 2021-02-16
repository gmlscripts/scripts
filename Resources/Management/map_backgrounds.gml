#define map_backgrounds
/// map_backgrounds(map)
//  GM:S v2.3+ compatible
//
//  Fills a given map data structure with the id values of all
//  background resources, keyed by strings of their names.
//
//  @param map         map data structure, real
//
/// GMLscripts.com/license
function map_backgrounds(map) {
    var no,i,ds_;
    ds_map = map;
    no = background_create_color(1,1,c_white);
    background_delete(no);
    for (i=0; i<no; i+=1) {
        if (background_exists(i)) {
            ds_map_add(ds_map,background_get_name(i),i);
        }
    }
    return 0;
}