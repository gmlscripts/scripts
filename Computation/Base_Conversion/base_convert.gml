/// @func   base_convert(number, oldbase, newbase)
///
/// @desc   Returns a number converted from one base as another base.
///         Base36 is the largest base supported.
///
/// @param  {string}    number      integer value to be converted
/// @param  {real}      oldbase     base of the given number
/// @param  {real}      newbase     base of the returned number
///
/// @return {string}    number
///
/// GMLscripts.com/license

function base_convert(number, oldbase, newbase) {
    number = string_upper(number);

    var dig = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var len = string_length(number);

    var num;
    for (var i = 0; i < len; i++) {
        num[i] = string_pos(string_char_at(number, i + 1), dig) - 1;
    }

    var out = "";
    while (len > 0) {
        var divide, newlen;
        divide = 0;
        newlen = 0;
        for (var i = 0; i < len; i++) {
            divide = divide * oldbase + num[i];
            if (divide >= newbase) {
                num[newlen] = divide div newbase;
                newlen++;
                divide = divide mod newbase;
            } else if (newlen > 0) {
                num[newlen] = 0;
                newlen++;
            }
        }
        len = newlen;
        out = string_char_at(dig, divide + 1) + out;
    }
    
    return out;
}
