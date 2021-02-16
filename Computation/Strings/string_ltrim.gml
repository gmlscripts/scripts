#define string_ltrim
/// string_ltrim(str)
//  GM:S v2.3+ compatible
//
//  Returns the given string with whitespace stripped from its start.
//  Whitespace is defined as SPACE, HT, LF, VT, FF, CR.
//
//  @param str         string of text, string
//
/// GMLscripts.com/license
function string_ltrim(str) {
    var l,r,o;
    l = 1;
    r = string_length(str);
    repeat (r) {
        o = ord(string_char_at(str,l));
        if ((o > 8) && (o < 14) || (o == 32)) l += 1;
        else break;
    }
    return string_copy(str,l,r-l+1);
}