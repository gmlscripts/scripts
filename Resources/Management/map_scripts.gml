/// map_scripts(map)
//
//  Fills a given map data structure with the id values of all
//  script resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var i, ds_map;
    ds_map = argument0;
    for (i = 0; script_exists(i); i += 1) {
        ds_map_add(ds_map, script_get_name(i), i);
    }
    return 0;
}
