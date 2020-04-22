#define oct_to_dec
/// oct_to_dec(oct)
//
//  Returns an integer converted from an octal string.
//
//      oct         octal digits, string
//
/// GMLscripts.com/license
{
    var oct = argument0,
        dec = 0;
    
    var dig = "01234567";
    var len = string_length(oct);
    for (var pos=1; pos<=len; pos+=1) {
        dec = dec << 3 | (string_pos(string_char_at(oct, pos), dig) - 1);
    }
    
    return dec;
}