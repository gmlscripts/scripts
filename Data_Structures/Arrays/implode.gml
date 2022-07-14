/// @func   implode(del, arr)
///
/// @desc   Returns a string of elements from a given array
///         of strings and separated by a delimiter.
///
///         eg. implode(":", ["hello", "world"]) == "hello:world"
///
/// @param  {string}    del         delimiter character(s)
/// @param  {array}     arr         array of strings
///
/// @return {string}    string of delimited elements
///
/// GMLscripts.com/license

function implode(del, arr)
{
    var len = array_length(arr);
    if (len == 0) return "";
    var out = "";
    var ind = 0;
    repeat (len-1) {
        out += arr[ind] + del;
        ind++;
    }
    out += arr[ind];
    return out;
}
