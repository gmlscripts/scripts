#define map_timelines
/// map_timelines(map)
//
//  Fills a given map data structure with the id values of all
//  timeline resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var no,i,ds_map;
    ds_map = argument0;
    no = timeline_add();
    timeline_delete(no);
    for (i=0; i<no; i+=1) {
        if (timeline_exists(i)) {
            ds_map_add(ds_map,timeline_get_name(i),i);
        }
    }
    return 0;
}