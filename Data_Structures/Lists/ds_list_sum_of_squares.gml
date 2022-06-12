/// @func   ds_list_sum_of_squares(list)
///
/// @desc   Returns the sum of squares of all values in a list.
///         The sum of squares, or sum of squared deviation
///         scores, is a measure of variability in a data set.
///         If the list is empty, undefined is returned.
///
/// @param  {list}      list        list data structure
///
/// @return {real}      sum of squared deviation scores
///
/// GMLscripts.com/license
function ds_list_sum_of_squares(list)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;
    var sum = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;
    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i) - avg);

    return sum;
}
