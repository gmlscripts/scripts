/// @func   ds_list_standard_deviation(list, sample)
///
/// @desc   Returns the standard deviation for values in a list.
///         Computes for a sample or entire population (default).
///
/// @param  {list}      list        list data structure
/// @param  {bool}      sample      true for sample, false for population
///
/// @return {real}      standard deviation
///
/// GMLscripts.com/license

function ds_list_standard_deviation(list, sample=false)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;
    var sum = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;

    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i) - avg);

    return sqrt(sum / (n - real(sample)));
}
