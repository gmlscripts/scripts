#define array
/// array(value,...)
//  GM:S v2.3+ compatible
//
//  Returns an array populated by given arguments.
//
/// GMLscripts.com/license
function array(value,...) {
    var r, i = argument_count;
    while (--i >= 0) r[i] = argument[i];
    return r;
}