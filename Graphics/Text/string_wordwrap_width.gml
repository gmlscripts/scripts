#define string_wordwrap_width
/// string_wordwrap_width(string,width,break,split)
//  GM:S v2.3+ compatible
//
//  Returns a given string, word wrapped to a pixel width,
//  with line break characters inserted between words.
//  Uses the currently defined font to determine text width.
//
//  @param string      text to word wrap, string
//  @param width       maximum pixel width before a line break, real
//  @param break       line break characters to insert into text, string
//  @param split       split words that are longer than the maximum, bool
//
/// GMLscripts.com/license
function string_wordwrap_width(string,width,break,split) {
    var pos_space, pos_current, text_current, text_output;
    pos_space = -1;
    pos_current = 1;
    text_current = string;
    if (is_real(break)) break = "#";
    text_output = "";
    while (string_length(text_current) >= pos_current) {
        if (string_width(string_copy(text_current,1,pos_current)) > width) {
            //if there is a space in this line then we can break there
            if (pos_space != -1) {
                text_output += string_copy(text_current,1,pos_space) + string(break);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_space+1,string_length(text_current)-(pos_space));
                pos_current = 1;
                pos_space = -1;
            } else if (split) {
                //if not, we can force line breaks
                text_output += string_copy(text_current,1,pos_current-1) + string(break);
                //remove the text we just looked at from the current text string
                text_current = string_copy(text_current,pos_current,string_length(text_current)-(pos_current-1));
                pos_current = 1;
                pos_space = -1;
            }
        }
        if (string_char_at(text_current,pos_current) == " ") pos_space = pos_current;
        pos_current += 1;
    }
    if (string_length(text_current) > 0) text_output += text_current;
    return text_output;
}