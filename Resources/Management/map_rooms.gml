#define map_rooms
/// map_rooms(map)
//
//  Fills a given map data structure with the id values of all
//  room resources, keyed by strings of their names.
//
//      map         map data structure, real
//
/// GMLscripts.com/license
{
    var ds_map,i;
    ds_map = argument0;
    i = room_first;
    while (room_exists(i)) {
        ds_map_add(ds_map,room_get_name(i),i);
        i = room_next(i);
    }
    return 0;
}