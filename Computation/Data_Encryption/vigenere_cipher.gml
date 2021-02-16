#define vigenere_cipher
/// vigenere_cipher(in,key,mode)
//  GM:S v2.3+ compatible
//
//  Returns the given string enciphered or deciphered 
//  using a Vigenere style cipher.
//
//  @param in          input, string
//  @param key         enciphering key, string
//  @param mode        0 = decipher, 1 = encipher
//
/// GMLscripts.com/license
function vigenere_cipher(in,key,mode) {
    var out;
    out = "";
    var inLen, keyLen, pos, inChar, keyChar, outChar;
    var inVal, keyVal, outVal;
    inLen = string_length(in);
    keyLen = string_length(key);
    for (pos=0; pos<inLen; pos+=1) {
        inChar = string_char_at(in, pos+1);
        keyChar = string_char_at(key, (pos mod keyLen)+1);
        inVal = ord(inChar);
        keyVal = ord(keyChar);
        if (mode) {
            outVal = (inVal + keyVal) mod 256;
        }else{
            outVal = (256 + inVal - keyVal) mod 256;
        }
        outChar = chr(outVal);
        out = out + outChar;
    }
    return out;
}