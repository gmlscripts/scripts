#define vigenere_ascii
/// vigenere_ascii(in,key,mode)
//  GM:S v2.3+ compatible
//
//  Returns the given string enciphered or deciphered 
//  using a simple Vigenere style cipher, and filtering
//  out non-printable characters.
//
//  @param in          input, string
//  @param key         enciphering key, string
//  @param mode        0 = decipher, 1 = encipher
//
/// GMLscripts.com/license
function vigenere_ascii(in,key,mode) {
    var out;
    out = "";
    var inLen, keyLen, pos, inChar, keyChar, outChar;
    var inVal, keyVal, outVal, loVal, hiVal, span;
    inLen = string_length(in);
    keyLen = string_length(key);
    loVal = 32;
    hiVal = 126;
    span = (hiVal - loVal) + 1;
    for (pos=0; pos<inLen; pos+=1) {
        inChar = string_char_at(in, pos+1);
        keyChar = string_char_at(key, (pos mod keyLen)+1);
        inVal = min(max(loVal, ord(inChar)), hiVal) - loVal;
        keyVal = min(max(loVal, ord(keyChar)), hiVal) - loVal;
        if (mode) {
            outVal = ((inVal + keyVal) mod span) + loVal;
        }else{
            outVal = ((span + inVal - keyVal) mod span) + loVal;
        }
        outChar = chr(outVal);
        out = out + outChar;
    }
    return out;
}