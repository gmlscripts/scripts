#define room_get_index
/// room_get_index(name)
//
//  Returns the index of the room with the given name
//  and noone if a room with the given name could not be found
//
//      name       the name of the room to find, string
//
/// GMLscripts.com/license

var name = argument0;
var rm = room_first;
while room_exists(rm) {
    if (room_get_name(rm) == name) {
        return rm;
    } else {
        rm = room_next(rm);
    }
}
return noone;