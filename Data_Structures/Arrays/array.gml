#define array
/// array(value,...)
//
//  Returns an array populated by given arguments.
//
/// GMLscripts.com/license
{
    var r, i = argument_count;
    while (--i >= 0) r[i] = argument[i];
    return r;
}