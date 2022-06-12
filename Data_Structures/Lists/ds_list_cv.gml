/// @func   ds_list_cv(list, sample)
///
/// @desc   Returns the coefficient of variation for values in a list.
///         Computes for a sample or entire population (default).
///
/// @param  {list}      list        list data structure
/// @param  {bool}      sample      true for sample, false for population
///
/// @return {real}      coefficient of variation
///
/// GMLscripts.com/license

function ds_list_cv(list, sample=false)
{
    var n = ds_list_size(list);
    if (n == 0) return undefined;

    var avg = 0;
    var sum = 0;

    for (var i=0; i<n; i++) avg += ds_list_find_value(list, i);
    avg /= n;

    for (var i=0; i<n; i++) sum += sqr(ds_list_find_value(list, i) - avg);

    return sqrt(sum / (n - real(sample))) / avg;
}
