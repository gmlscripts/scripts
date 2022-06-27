/// @func   string_extract(str, sep, index)
///
/// @desc   Returns the element at given index within a string of elements.
///
///         eg. string_extract("cat|dog|mouse", "|" ,1) == "dog"
///
/// @param  {string}    str         elements
/// @param  {string}    sep         element separator
/// @param  {real}      index       element to return, [0..N-1]
///
/// @return {string}    single element
///
/// GMLscripts.com/license

function string_extract(str, sep, index)
{
    var len = string_length(sep) - 1;
    repeat (index) {
        str = string_delete(str, 1, string_pos(sep, str) + len);
    }
    str = string_delete(str, string_pos(sep, str), string_length(str));
    return str;
}
