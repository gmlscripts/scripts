/// @func   ds_list_standard_score(list, pos)
///
/// @desc   Returns the standard score (z-score) of the value at a
///         position in a list. A standard score is the distance of
///         a value from the mean measured in standard deviations.
///         If the list is empty, undefined is returned.
///
/// @param  {list}      list        list data structure
/// @param  {real}      pos         position in the list
///
/// @return {real}      standard score
///
/// GMLscripts.com/license

function ds_list_standard_score(list, pos)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;
    var sum = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;
    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i) - avg);

    return (ds_list_find_value(list, pos) - avg) / sqrt(sum / n);
}
