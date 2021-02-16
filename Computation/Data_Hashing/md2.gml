#define md2
/// md2(str)
//  GM:S v2.3+ compatible
//
//  Returns an MD2 hash (RFC 1319) computed from a given string.
//
//  This script requires initialization to use. To ready the 
//  script for use it must first be called without any arguments. 
//  This only needs to be done once.
//
//  @param str     data to hash with MD2, string
//
//  Note:
//      This creates a lookup table in the form of a 256-entry
//      global array called _MD2tab[].
//
/// GMLscripts.com/license
function md2(str) {
    if (argument_count == 0) {
        // Initialize lookup table.
        var tab;
        tab  = "041046067201162216124001061054084161236240006019";
        tab += "098167005243192199115140152147043217188076130202";
        tab += "030155087060253212224022103066111024138023229018";
        tab += "190078196214218158222073160251245142187047238122";
        tab += "169104121145021178007063148194016137011034095033";
        tab += "128127093154090144050039053062204231191247151003";
        tab += "255025048179072165181209215094146042172086170198";
        tab += "079184056210150164125182118252107226156116004241";
        tab += "069157112089100113135032134091207101230045168002";
        tab += "027096037173174176185246028070097105052064126015";
        tab += "085071163035221081175058195092249206186197234038";
        tab += "044083013110133040132009211223205244065129077082";
        tab += "106220055200108193171250036225123008012189177074";
        tab += "120136149139227099232109233203213254059000029057";
        tab += "242239183014102088208228166119114248235117075010";
        tab += "049068080180143237031026219153141051159017131020";
        for (var i=0; i<256; i++) {
            global._MD2tab[i] = real(string_copy(tab, i*3+1, 3));
        }
        return 0;
    }
    
    var str,char,digest,i,j,k,L,M,N,X,pad;
    str = argument[0];
    N = string_length(str);
    pad = 16 - (N mod 16);
    str += string_repeat(chr(pad), pad);
    N = N + pad;
    for (i=0; i<N; i++) M[i]=ord(string_char_at(str,i+1));
    for (i=0; i<=15; i++) C[i] = 0;
    L = 0;
    for (i=0; i<(N div 16); i++) {
        for(j=0; j<=15; j++) {
            char = M[i*16+j];
            C[j] = C[j] ^ global._MD2tab[char ^ L];
            L = C[j];
        }
    }
    for (i=0; i<=15; i++) M[i+N] = C[i];
    N += 16;
    for (i=0; i<48; i++) X[i] = 0;
    for (i=0; i<(N div 16); i++) {
        for (j=0; j<=15; j++) {
            X[16+j] = M[i*16+j];
            X[32+j] = (X[16+j] ^ X[j]);
        }
        t = 0;
        for (j=0; j<18; j++) {
            for (k=0; k<48; k++) {
                t = X[k] ^ global._MD2tab[t];
                X[k] = t;
            }
            t = (t+j) mod 256;
        }
    }
    digest = "";
    for (i=0; i<=15; i++) {
        digest += string_char_at("0123456789abcdef", X[i] div 16 + 1);
        digest += string_char_at("0123456789abcdef", X[i] mod 16 + 1);
    }
    return digest;
}