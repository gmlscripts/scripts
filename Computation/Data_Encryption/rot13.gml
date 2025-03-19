/// @func   rot13(str)
///
/// @desc   Returns the given string transformed with the ROT13 algorithm.
///         ROT13 is a special case of the Caesar substitution cipher with
///         a 13-position shift and is self-inverse. When ROT13 ciphertext
///         is processed by the ROT13 algorithm, the original plaintext is
///         produced. Characters absent from the English alphabet will not
///         be changed.
///
/// @param  {string}    str         text to be transformed
///
/// @return {string}    ROT13 encoded text
///
/// GMLscripts.com/license

function rot13_6(str)
{
    var out = "";
    var pt = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    var ct = "NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm";
    var len = string_length(str)
    for (var i=1; i<=len; i++)
    {
        var c = string_char_at(str, i);
        var pos = string_pos(c, pt);
        if (pos) c = string_char_at(ct, pos);
        out += c;
    }
    return out;
}
