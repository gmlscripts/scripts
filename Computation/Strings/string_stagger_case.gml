#define string_stagger_case
/// string_stagger_case(str,spaces,first)
//  GM:S v2.3+ compatible
//
//  Returns a string with the letters in staggered case,
//  such as: "hElLo! hOw ArE yOu ToDaY?"
//
//  @param str         string of text, string
//  @param spaces      count spaces as letters, bool
//  @param first       capitalize first letter, bool
//
/// GMLscripts.com/license
function string_stagger_case(str,spaces,first) {
    var new,iii,len,old,j;
    new = str;
    iii = first;
    len = string_length(new);
    old = ''; 
    for (j=1; j<=len; j+=1) {
        if (string_char_at(new,j) == ' ' && spaces == false) continue;
        if (iii) old = string_upper(string_char_at(new,j)); 
        else     old = string_lower(string_char_at(new,j)); 
        new = string_delete(new,j,1); 
        new = string_insert(old,new,j); 
        iii = !iii;
    }
    return new;
}