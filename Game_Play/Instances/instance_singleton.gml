#define instance_singleton
/// instance_singleton(object)
//
//  Returns a single copy of the given object, 
//  creating one if no instance exists.
//
//      object      object to look for, real
//
/// GMLscripts.com/license
{
    var obj = argument0;
    if (instance_number(obj) == 0) return instance_create(0, 0, obj);
    return instance_find(obj, 0);
}