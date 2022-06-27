/// @func   speakable_password(length)
///
/// @desc   Returns a random speakable password of a given length.
///         Generated words are simply alternating consonants and
///         vowels selected at random.
///
///         eg. speakable_password(7) == "fumojul"
///
/// @param  {real}      length      length of password
///
/// @return {string}    generated password
///
/// GMLscripts.com/license

function speakable_password(length)
{
    var result, i;
    result = "";
    for (i = 0; i < length; i++) {
        if (i % 2) {
            result += string_char_at("aeiou", ceil(random(5)));
        } else {
            result += string_char_at("bcdfghjklmnprstwyz", ceil(random(18)));
        }
    }
    return result;
}
