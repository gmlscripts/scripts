/// @func   string_split(str, len, brk)
///
/// @desc   Returns a string with break characters inserted at a given interval.
///         This is very simple and does not split on word boundaries.
///
/// @param  {string}    str         string to be split
/// @param  {real}      len         maximum line length, default 76
/// @param  {string}    brk         line break characters, default "\n"
///
/// GMLscripts.com/license

function string_split(str, len=76, brk="\n")
{
    var strlen = string_length(str);
    for (var i=strlen-((strlen-1) mod len); i>len; i-=len) {
        str = string_insert(brk, str, i);
    }
    return str;
}
