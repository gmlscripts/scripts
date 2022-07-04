/// @func   cambridge_encode(str, alphabet)
///
/// @desc   Returns given string with the interior letters of each word scrambled.
///         The first and last letters of a word are left as-is. Words are separated
///         by non-word characters, eg. characters that are not "A" through "Z".
///         To accomodate non-English languages, or for special uses, an alphabet
///         may be supplied as a string of valid characters. Upper and lower case
///         letters are considered different and both may be required. The default
///         English alphabet consists of "A" through "Z", upper and lower case.
///         Characters in the string that are not in the alphabet are left in place.
///
///         Example: "cambridge_encode" ==> "cgmrdaibe_eoncde"
///
/// @param  {string}    str         text to encode
/// @param  {string}    alphabet    valid word characters (default English alphabet)
///
/// @return {string}    encoded text
///
/// GMLscripts.com/license

function cambridge_encode(str, alphabet=undefined)
{
    //  Create default alphabet, if needed
    alphabet ??= "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    //  Split words and non-words
    var words;
    words[0] = ds_queue_create();
    words[1] = ds_queue_create();
    var len = string_length(str);
    var state = 0;
    var word = "";
    for (var i=1; i<=len; i++) {
        var c = string_char_at(str, i);
        var w = string_pos(c, alphabet) > 0;
        if (w == state) {
            word += c;
        } else {
            ds_queue_enqueue(words[state], word);
            word = c;
            state = w;
        }
    }
    ds_queue_enqueue(words[state], word);
    if (ds_queue_size(words[0]) < ds_queue_size(words[1])) ds_queue_enqueue(words[0], "");
    if (ds_queue_size(words[1]) < ds_queue_size(words[0])) ds_queue_enqueue(words[1], "");

    //  Scramble each word
    repeat (ds_queue_size(words[1])) {
        var word = ds_queue_dequeue(words[1]);
        var wrod = string_char_at(word, 1);
        word = string_delete(word, 1, 1);
        var len = string_length(word);
        for (var i=1; i<len; i++) {
            var pos = irandom_range(1, len-i);
            wrod += string_char_at(word, pos);
            word = string_delete(word, pos, 1);
        }
        wrod += word;
        ds_queue_enqueue(words[1], wrod);
    }

    //  Combine words and non-words
    var out = "";
    repeat (ds_queue_size(words[0])) {
        out += ds_queue_dequeue(words[0]);
        out += ds_queue_dequeue(words[1]);
    }

    //  Finish up
    ds_queue_destroy(words[0]);
    ds_queue_destroy(words[1]);
    return out;
}
