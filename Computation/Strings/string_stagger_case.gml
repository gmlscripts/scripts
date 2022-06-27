/// @func   string_stagger_case(str, spaces, first)
///
/// @desc   Returns a string with the letters in staggered case,
///         such as: "hElLo! hOw ArE yOu ToDaY?"
///
/// @param  {string}    str         string of text
/// @param  {bool}      spaces      count spaces as letters, default true
/// @param  {bool}      first       capitalize first letter, default true
///
/// @return {string}    string in stagger case
///
/// GMLscripts.com/license

function string_stagger_case(str, spaces=true, first=true)
{
    var len = string_length(str);
    var old = "";
    for (var j=1; j<=len; j++) {
        if (string_char_at(str, j) == " " && spaces == false) continue;
        if (first) old = string_upper(string_char_at(str, j));
        else       old = string_lower(string_char_at(str, j));
        str = string_delete(str, j, 1);
        str = string_insert(old, str, j);
        first = !first;
    }
    return str;
}
