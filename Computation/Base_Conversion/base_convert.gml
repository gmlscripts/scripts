#define base_convert
/// base_convert(number, oldbase, newbase)
//
//  Returns a number converted from one base as another base.
//  Base36 is the largest base supported.
//
//      number      integer value to be converted, string
//      oldbase     base of the given number, integer
//      newbase     base of the returned value, integer
//
/// GMLscripts.com/license
{
    var number  = string_upper(argument0),
        oldbase = argument1,
        newbase = argument2,
        out     = "";
    
    var dig = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var len = string_length(number);
    
    var num;
    for (var i=0; i<len; i++) {
        num[i] = string_pos(string_char_at(number, i+1), dig) - 1;
    }
    
    do {
        var divide, newlen;
        divide = 0;
        newlen = 0;
        for (var i=0; i<len; i++) {
            divide = divide * oldbase + num[i];
            if (divide >= newbase) {
                num[newlen] = divide div newbase;
                newlen++;
                divide = divide mod newbase;
            } else if (newlen  > 0) {
                num[newlen] = 0;
                newlen++;
            }
        }
        len = newlen;
        out = string_char_at(dig, divide+1) + out;
    } until (len == 0);
    
    return out;
}