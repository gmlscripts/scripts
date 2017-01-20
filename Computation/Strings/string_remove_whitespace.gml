/// string_remove_whitespace(str [, sub])
//
//  Consolidates and removes all whitespace from a string,
//  optionally replacing it with a character or string.
//  Whitespace is defined as SPACE, HT, LF, VT, FF, CR.
//
//      str     text to be processed, string
//      sub     whitespace substitution, string (optional)
//
/// GMLscripts.com/license
{
    var str, sub="", wsp, len, i, o, out="";
    
    str = argument[0];
    if (argument_count > 1) sub = argument[1];
    
    wsp = false;
    len = string_length(str);
    
    for (i=1; i<=len; i+=1) 
    {
        o = string_ord_at(str, i);
        if ((o > 8) && (o < 14) || (o == 32)) 
        {
            wsp = true;
            continue;
        }
        if (wsp) 
        {
            out += sub;
            wsp = false;
        }
        out += chr(o);
    }
    if (wsp) out += sub;
    
    return out;
}