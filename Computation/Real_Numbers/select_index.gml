#define select_index
/// select_index(value,choice0,choice1,choice2...)
//  GM:S v2.3+ compatible
//
//  Returns the index of an argument matching a given value.
//  If value matches the first choice, 0 is returned.
//  if value isn't among the choices, undefined is returned.
//
//  @param value       value to find
//  @param choiceN     values to search
//
//  eg. select_index("two", "zero", "one", "two", "three") == 2
//
/// GMLscripts.com/license
function select_index(value,choice0,choice1,choice2...) {
    
    var choices = ds_list_create();
    var result = undefined;
    for (var i = 1; i < argument_count; i++) ds_list_add(choices, argument[i]);
    i = ds_list_find_index(choices, value);
    if (i >= 0) result = i;
    ds_list_destroy(choices);
    return result;
}