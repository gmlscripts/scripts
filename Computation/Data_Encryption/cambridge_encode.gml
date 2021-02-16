#define cambridge_encode
/// cambridge_encode(str)
//  GM:S v2.3+ compatible
//
//  Returns the given string with the central letters of each word
//  scrambled and the first and last letters of each word left as-is.
//
//  @param str         text to encode, string
//
/// GMLscripts.com/license
function cambridge_encode(str) {
    var len, num, pos, wordList, i, out, word, c;
    len = string_length(str);
    num = 0;
    pos = 0;
    if (len > 2) {
        wordList = ds_list_create();
        // Explode the string to the list
        repeat (string_count(' ',str)) {
            pos = string_pos(' ',str);
            ds_list_add(wordList,string_letters(string_copy(str,1,pos-1)));
            str = string_delete(str,1,pos);
        }
        // Scramble each word
        ds_list_add(wordList,string_letters(str));
        for (i=0; i<ds_list_size(wordList); i+=1) {
            out = '';
            word = ds_list_find_value(wordList,i);
            out += string_char_at(word,1);
            word = string_delete(word,1,1);
            for(c=0; c<string_length(word)-1; c+=1) {
                num = ceil(random(string_length(word)-1));
                out += string_char_at(word,num);
                word = string_delete(word,num,1);
            }
            out += word;
            ds_list_replace(wordList,i,out);
        }
        str = '';
        for (i=0; i<ds_list_size(wordList); i+=1) {
            str += ds_list_find_value(wordList,i);
            str += ' ';
        }
        ds_list_destroy(wordList);
    }
    // Add Punctuation
    word = str;
    for (i=0; i<len+1; i+=1) {
        c = string_char_at(word,i);
        if (string_count(c,string_letters(word)) == 0 && c != ' ') {
            str = string_insert(c,str,i);
        }
     }
     return (str);
}