#define map_rooms
/// map_rooms(map)
//  GM:S v2.3+ compatible
//
//  Fills a given map data structure with the id values of all
//  room resources, keyed by strings of their names.
//
//  @param map         map data structure, real
//
/// GMLscripts.com/license
function map_rooms(map) {
    var ds_i;
    ds_map = map;
    i = room_first;
    while (room_exists(i)) {
        ds_map_add(ds_map,room_get_name(i),i);
        i = room_next(i);
    }
    return 0;
}