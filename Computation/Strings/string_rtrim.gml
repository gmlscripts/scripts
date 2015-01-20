#define string_rtrim
/// string_rtrim(str)
//
//  Returns the given string with whitespace stripped from its end.
//  Whitespace is defined as SPACE, TAB, NL, VT, FF, CR.
//
//      str         string of text, string
//
/// GMLscripts.com/license
{
    var str,r,o;
    str = argument0;
    r = string_length(str);
    repeat (r) {
        o = ord(string_char_at(str,r));
        if ((o > 8) && (o < 14) || (o == 32)) r -= 1;
        else break;
    }
    return string_copy(str,1,r);
}