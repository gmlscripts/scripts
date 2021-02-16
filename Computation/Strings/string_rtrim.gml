#define string_rtrim
/// string_rtrim(str)
//  GM:S v2.3+ compatible
//
//  Returns the given string with whitespace stripped from its end.
//  Whitespace is defined as SPACE, HT, LF, VT, FF, CR.
//
//  @param str         string of text, string
//
/// GMLscripts.com/license
function string_rtrim(str) {
    var r,o;
    r = string_length(str);
    repeat (r) {
        o = ord(string_char_at(str,r));
        if ((o > 8) && (o < 14) || (o == 32)) r -= 1;
        else break;
    }
    return string_copy(str,1,r);
}