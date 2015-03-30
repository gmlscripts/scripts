#define array_create
/// array_create(value,...)
//
//  Returns an array populated by given arguments.
//
//  Note: GM:Studio has a 16 argument limit.
//
/// GMLscripts.com/license
{
    var r, i = argument_count;
    while (--i >= 0) r[i] = argument[i];
    return r;
}