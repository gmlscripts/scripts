#define string_escape
/// string_escape(str)
//  GM:S v2.3+ compatible
//
//  Returns the given string with all escape sequences parsed.
//
//  @param str         string with C-style escape sequences, string
//
/// GMLscripts.com/license
function string_escape(str) {
    var out,pos,tmp,ref,val;
    out = "";
    ref = "0123456789abcdef";
    while (str != "") {
        pos = string_pos("\",str);
        out += string_copy(str,1,pos-1);
        str = string_delete(str,1,pos);
        if (pos > 0) {
            tmp = string_copy(str,1,1);
            str = string_delete(str,1,1);
        }
        else {
            out += str;
            str = "";
            tmp = "";
        }
        switch (tmp) {
            case "\":
            out += "\";
            break;
            case "r":
            out += chr(13);
            break;
            case "n":
            out += chr(10);
            break;
            case "t":
            out += chr(9);
            break;
            case "x":
            val = string_pos(string_copy(str,2,1),ref)-1;
            if (val < 0) {
                break;
            }
            val += 16*(string_pos(string_copy(str,1,1),ref)-1);
            if (val >= 0) {
                out += chr(val);
                str = string_delete(str,1,2);
            }
            break;
            case "0":
            case "1":
            case "2":
            case "3":
            if (string_copy(str,1,2) == string_digits(string_copy(str,1,2))) {
                val = 64 * (string_pos(tmp,ref)-1);
                val += 8 * (string_pos(string_copy(str,1,1),ref)-1);
                val += string_pos(string_copy(str,2,1),ref)-1;
                out += chr(val)
                str = string_delete(str,1,2);
            }
            else if (tmp == "0") {
                out += chr(0);
            }
            break;
        }
    }
    return out;
}