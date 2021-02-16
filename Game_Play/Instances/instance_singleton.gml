#define instance_singleton
/// instance_singleton(object)
//  GM:S v2.3+ compatible
//
//  Returns a single instance of the given object, 
//  creating one if no instance exists.
//
//  @param object      object to look for, real
//
/// GMLscripts.com/license
function instance_singleton(object) {
    var obj = ;
    if (instance_number(obj) == 0) return instance_create(0, 0, obj);
    return instance_find(obj, 0);
}