/// @func   ds_list_select_relative_wrap(current, delta, list)
///
/// @desc   Returns a value from a list data structure in a position relative
///         to a given value. If a relative position is beyond extents of the
///         list, the position is wrapped around until it is within range. If
///         current value isn't among the choices, return value is undefined.
///         If current value is in the list more than once, the behavior is
///         not defined.
///
///         eg. list == { "Hello", "Doctor", "Name" }
///             ds_list_select_relative_wrap("Name", -2, list) == "Hello"
///             ds_list_select_relative_wrap("Name", 2, list) == "Doctor"
///
/// @param  {any}       current     value matching a given choice
/// @param  {real}      delta       relative position of desired choice, integer
/// @param  {list}      list        list of values to return, if selected
///
/// @return {any}       selected value
///
/// GMLscripts.com/license

function ds_list_select_relative_wrap(current, delta, list)
{
    var size = ds_list_size(list);
    var i = ds_list_find_index(list, current);
    if (i < 0) return undefined;
    i = (((i + delta) mod size) + size) mod size;
    var result = ds_list_find_value(list, i);
    return result;
}
