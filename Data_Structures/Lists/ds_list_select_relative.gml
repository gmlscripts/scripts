/// @func   ds_list_select_relative(current, delta, list)
///
/// @desc   Returns a value from a list data structure in a position relative
///         to a given value. If a relative position is beyond exents of list,
///         the position is clamped to be within range. If current value isn't
///         among the choices, the return value is undefined. If current value
///         is in the list more than once, the behavior is not defined.
///
///         eg. list == { "Hello", "Doctor", "Name" }
///             ds_list_select_relative("Name", -2, list) == "Hello"
///             ds_list_select_relative("Name", 2, list) == "Doctor"
///
/// @param  {any}       current     value matching a given choice
/// @param  {real}      delta       relative position of desired choice
/// @param  {list}      list        list of values to return, if selected
///
/// @return {any}       selected value
///
/// GMLscripts.com/license

function ds_list_select_relative(current, delta, list)
{
    var size = ds_list_size(list);
    var i = ds_list_find_index(list, current);
    if (i < 0) return undefined;
    i = clamp (i + delta, 0, size - 1);
    var result = ds_list_find_value(list, i);
    return result;
}
