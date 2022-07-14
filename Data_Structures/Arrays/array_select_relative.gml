/// @func   array_select_relative(current, delta, choices)
///
/// @desc   Returns an array element in a position relative to a given value.
///         If a relative position is beyond the range of given choices,
///         the position is clamped to be within range. If current value
///         isn't among the choices, the return value is undefined.
///
///         eg. select_relative("Name",  -2, ["Hello", "Doctor", "Name"]) == "Hello"
///             select_relative("Doctor", 2, ["Hello", "Doctor", "Name"]) == "Name"
///
/// @param  {any*}      current     value matching a given choice
/// @param  {real}      delta       relative position of desired choice, integer
/// @param  {array}     choices     array with a value to return, if selected
///
/// @return {any*}      selected choice
///
/// GMLscripts.com/license

function array_select_relative(current, delta, choices)
{
    var size = array_length(choices);
    var list = ds_list_create();
    var result = undefined;
    for (var i = 0; i < size; i++) ds_list_add(list, choices[i]);
    i = ds_list_find_index(list, current);
    if (i >= 0) {
        i = clamp(i + delta, 0, size - 1);
        var result = ds_list_find_value(list, i);
    }
    ds_list_destroy(list);
    return result;
}
