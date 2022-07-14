/// @func   explode_real(delimiter,string)
///
/// @desc   Returns an array of real values parsed from a given
///         string of elements separated by a delimiter.
///
///         eg. explode_real(":", "1:2:3:4") == [1, 2, 3, 4]
///
/// @param  {string}    del         delimiter character(s)
/// @param  {string}    str         group of elements
///
/// @return {array}     array of real numbers
///
/// GMLscripts.com/license

function explode_real(del, str)
{
    if (str == "") return [];
    if (del == "") return [real(str)];
    str += del;
    var arr = array_create(0);
    var len = string_length(del);
    repeat (string_count(del, str)) {
        var pos = string_pos(del, str) - 1;
        array_push(arr, real(string_copy(str, 1, pos)));
        str = string_delete(str, 1, pos + len);
    }
    return arr;
}
