#define speakable_password
/// speakable_password(length)
//  GM:S v2.3+ compatible
//
//  Returns a random, speakable passowrd of the given length.
//
//  @param length      length of the generated password, real
//
/// GMLscripts.com/license
function speakable_password(length) {
    var result,i;
    result = "";
    for (i=0; i<length; i+=1) {
        if (i mod 2) result += string_char_at("aeiou",ceil(random(5)));
        else result += string_char_at("bcdfghjklmnprstwyz",ceil(random(18)));
    }
    return result;
}