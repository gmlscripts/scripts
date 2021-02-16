#define rc4
/// rc4(str,key)
//  GM:S v2.3+ compatible
//
//  Returns the given string encrypted/decrypted with the RC4 algorithm
//  using the given key. RC4 is a trademark of RSA Data Security, Inc.
//
//  @param str         plaintext or ciphertext, string
//  @param key         encryption key, string
//
/// GMLscripts.com/license
function rc4(str,key) {
    var out, len, i, S, j, temp, pos, t;
    out = "";
    len = string_length(key);
    for (i=0; i<256; i+=1) S[i] = i;
    j = 0;
    for (i=0; i<256; i+=1) {
        j = (j + S[i] + ord(string_char_at(key,(i mod len)+1))) mod 256;
        temp = S[i];
        S[i] = S[j];
        S[j] = temp;
    }
    i = 0;
    j = 0;
    for (pos=0; pos<string_length(str); pos+=1) {
        i = (i + 1) mod 256;
        j = (j + S[i]) mod 256;
        temp = S[i];
        S[i] = S[j];
        S[j] = temp;
        t = (S[i] + S[j]) mod 256;
        out += chr(ord(string_char_at(str,pos+1)) ^ S[t]);
    }
    return out;
}