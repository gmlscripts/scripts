#define oct_to_dec
/// oct_to_dec(oct)
//
//  Returns a decimal integer (real)
//  representing the given octal string.
//
//      oct         octal digits, string
//
/// GMLscripts.com/license
{
    var oct, dec, o, p;
    oct = argument0;
    dec = 0;
    o = "01234567";
    for (p=1; p<=string_length(oct); p+=1) {
        dec = dec << 3 | (string_pos(string_char_at(oct, p), o) - 1);
    }
    return dec;
}