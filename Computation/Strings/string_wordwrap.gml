#define string_wordwrap
/// string_wordwrap(string,length,break,split)
//  GM:S v2.3+ compatible
//
//  Returns a string with break characters inserted 
//  between words at a given character interval.
//
//  @param string      text to word wrap, string
//  @param length      maximum string length before a line break, real
//  @param break       line break characters to insert into text, string
//  @param split       split words that are longer than the maximum, bool
//
/// GMLscripts.com/license
function string_wordwrap(string,length,break,split) {
    var str,num,brk,cut,out,i,j;
    str = string;
    num = length;
    brk = break;
    cut = split;
    out = "";
    while (string_length(str)) {
        while (string_pos(brk,str) <= num + 1) && (string_pos(brk,str) > 0) {
            out += string_copy(str,1,string_pos(brk,str)+string_length(brk));
            str = string_delete(str,1,string_pos(brk,str)+string_length(brk));
        }
        i = string_length(str) + 1;
        if (i > num + 1) {
            for (i = num + 1; i > 0; i -= 1) {
                if (string_char_at(str,i) == " ") break;
            }
        }
        if (i == 0) {
            if (cut) {
                j = num;
                i = j;
            } else {
                i = string_pos(" ",str);
                if (i == 0) {
                    j = string_length(str);
                    i = j;
                } else {
                    j = i;
                    i -= 1;
                }
            }
        } else {
            j = i;
            i -= 1;
        }
        out += string_copy(str,1,i) + brk;
        str = string_delete(str,1,j);
    }
    out = string_copy(out,1,string_length(out) - string_length(brk));
    return out;
}