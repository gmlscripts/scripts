/// @func   string_limit(str, len, ext)
///
/// @desc   Returns a given string, truncated if it exceeds a certain length.
///         If truncated, an extension (such as an ellipsis) can be appended.
///
/// @param  {string}    str         text
/// @param  {real}      len         character length
/// @param  {string}    ext         text to append, optional
///
/// @return {string}    truncated string
///
/// GMLscripts.com/license

function string_limit(str, len, ext = "")
{
    var wid = max(len, string_length(ext));
    if (string_length(str) <= wid) {
        return str;
    }
    while (string_length(str + ext) > wid) {
        str = string_delete(str, string_length(str), 1);
    }
    return str + ext;
}
