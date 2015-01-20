#define ds_map_mirror
/// ds_map_mirror(id)
//
//  Exchanges map keys with map values.
//
//      id          map data structure, real
//
/// GMLscripts.com/license
{
    var dsid,temp,key,val;
    dsid = argument0;
    temp = ds_map_create();
    key = ds_map_find_first(dsid);
    val = ds_map_find_value(dsid,key);
    ds_map_add(temp,val,key);
    repeat (ds_map_size(dsid)-1) {
        key = ds_map_find_next(dsid,key);
        val = ds_map_find_value(dsid,key);
        ds_map_add(temp,val,key);    
    }
    ds_map_copy(dsid,temp);
    ds_map_destroy(temp);
    return 0;
}