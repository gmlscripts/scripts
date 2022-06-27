/// @func   string_remove_whitespace(str, sub)
///
/// @desc   Consolidates and removes all whitespace from a string,
///         optionally replacing it with a character or string.
///         Whitespace is defined as SPACE, HT, LF, VT, FF, CR.
///
/// @param  {string}    str     text to be processed
/// @param  {string}    sub     whitespace substitution, default ""
///
/// @return {string}    string without whitespace
///
/// GMLscripts.com/license

function string_remove_whitespace(str, sub="")
{
    var out = "";
    var wsp = false;
    var len = string_length(str);

    for (var i=1; i<=len; i++) 
    {
        var o = string_ord_at(str, i);
        if ((o > 8) && (o < 14) || (o == 32))
        {
            wsp = true;
            continue;
        }
        if (wsp)
        {
            out += sub;
            wsp = false;
        }
        out += chr(o);
    }
    if (wsp) out += sub;

    return out;
}
