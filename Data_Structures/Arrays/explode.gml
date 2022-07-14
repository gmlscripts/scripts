/// explode(del, str)
///
/// @desc   Returns an array of strings parsed from a given
///         string of elements separated by a delimiter.
///
///         eg. explode(":", "hello:world") == ["hello", "world"]
///
/// @param  {string}    del         delimiter character(s)
/// @param  {string}    str         group of elements
///
/// @return {array}     array of strings
///
/// GMLscripts.com/license

function explode(del, str)
{
    if (str == "") return [str];
    if (del == "") return [str];
    str += del;
    var arr = array_create(0);
    var len = string_length(del);
    repeat (string_count(del, str)) {
        var pos = string_pos(del, str) - 1;
        array_push(arr, string_copy(str, 1, pos));
        str = string_delete(str, 1, pos + len);
    }
    return arr;
}
