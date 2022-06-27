/// @func   string_add_spaces(str)
///
/// @desc   Returns given string with spaces inserted between each character.
///   
/// @param  {string}    str         string to insert spaces into
///
/// @return {string}    string with spaces inserted
///
/// GMLscripts.com/license

function string_add_spaces(str)
{
    var len = string_length(str);
    for (var j = len; j > 1; j--) {
        str = string_insert(" ", str, j);
    }
    return str;
}
