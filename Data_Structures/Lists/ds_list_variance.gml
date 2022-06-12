/// @func   ds_list_variance(list, sample)
///
/// @desc   Returns the variance of the values in a given list.
///         Computes for a sample or entire population (default).
///
/// @param  {list}      list        list data structure
/// @param  {bool}      sample      true for sample, false for population
///
/// @return {real}      variance of values
///
/// GMLscripts.com/license

function ds_list_variance(list, sample=false)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;
    var sum = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;

    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i) - avg);

    return sum / (n - real(sample));
}
