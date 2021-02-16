#define array_add
/// array_add(array,value,...)
//  GM:S v2.3+ compatible
//
//  Returns the given array with elements appended to it.
//  If an array is not given, the given value is returned.
//
/// GMLscripts.com/license
function array_add(array,value,...) {
    var r = argument[0];
    var o = array_length_1d(r) - 1;
    var i = argument_count;
    while (--i > 0) r[@o + i] = argument[i];
    return r;
}