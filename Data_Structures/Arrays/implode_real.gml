/// @func   implode_real(del, arr)
///
/// @desc   Returns a string of elements from a given array
///         of real values and separated by a delimiter.
///
///         eg. implode_real(":", [1, 2, 3, 4]) == "1:2:3:4"
///
/// @param  {string}    del         delimiter character(s)
/// @param  {array}     arr         array of real numbers
///
/// @return {string}    string of delimited elements
///
/// GMLscripts.com/license

function implode_real(del, arr)
{
    var len = array_length(arr);
    if (len == 0) return "";
    var out = "";
    var ind = 0;
    repeat (len-1) {
        out += string(arr[ind]) + del;
        ind++;
    }
    out += string(arr[ind]);
    return out;
}
