#define select_relative
/// select_relative(current,delta,choice0,choice1,choice2...)
//  GM:S v2.3+ compatible
//
//  Returns an argument in a position relative to a given value.
//  If a relative position is beyond the range of given choices,
//  the position is clamped to be within range. If current value
//  isn't among the choices, the return value is undefined.
//
//  @param current     value matching a given choice
//  @param delta       relative position of desired choice, integer
//  @param choiceN     value to return, if selected
//
//  eg. select_relative("Name", -2, "Hello", "Doctor", "Name") == "Hello"
//      select_relative("Doctor", 2, "Hello", "Doctor", "Name") == "Name"
//
/// GMLscripts.com/license
function select_relative(current,delta,choice0,choice1,choice2...) {
    
    var delta = argument[1];
    var size = argument_count - 2;
    var choices = ds_list_create();
    var result = undefined;
    for (var i = 2; i < argument_count; i++) ds_list_add(choices, argument[i]);
    i = ds_list_find_index(choices, current);
    if (i >= 0) {
        i = clamp(i + delta, 0, size - 1);
        var result = ds_list_find_value(choices, i);
    }
    ds_list_destroy(choices);
    return result;
}