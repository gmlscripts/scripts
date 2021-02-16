#define md5
/// md5(str)
//  GM:S v2.3+ compatible
//
//  Returns an MD5 hash (RFC 1321) computed from a given string.
//
//  This script requires initialization to use. To ready the 
//  script for use it must first be called without any arguments. 
//  This only needs to be done once.
//
//  @param str     data to hash with MD5, string
//
//  Note:
//      This creates lookup tables in the form of global
//      arrays called _MD5k[], _MD5g[], _MD5r[], and _MD5s[].
//
/// GMLscripts.com/license
function md5(str) {
    if (argument_count == 0) {
        // Initialize lookup tables.
        var grp, rol;
        grp  = "00010203040506070809101112131415";
        grp += "01061100051015040914030813020712";
        grp += "05081114010407101300030609121502";
        grp += "00071405120310010815061304110209";
        rol  = "07121722071217220712172207121722";
        rol += "05091420050914200509142005091420";
        rol += "04111623041116230411162304111623";
        rol += "06101521061015210610152106101521";
        globalvar _MD5k, _MD5g, _MD5r, _MD5s;
        for (i=0; i<64; i++) {
            _MD5k[i] = floor(abs(sin(i+1))*(1 << 32));
            _MD5g[i] = real(string_copy(grp,i*2+1,2));
            _MD5r[i] = real(string_copy(rol,i*2+1,2));
            _MD5s[i] = 32 - _MD5r[i];
        }
        return 0;
    }
    
    var str,uint,i,j,h,len,pos,data,w,a,b,c,d,e,f,temp,digest;
    str = argument[0];
    uint = $FFFFFFFF;
    h[0] = $67452301;
    h[1] = $EFCDAB89;
    h[2] = $98BADCFE;
    h[3] = $10325476;
    len = 8 * string_length(str);
    str += chr(128);
    pos = 0;
    repeat (string_length(str)) data[pos++] = ord(string_char_at(str, pos+1));
    while ((pos mod 64) != 56) data[pos++] = 0;
    for (i=0; i<64; i+=8) data[pos++] = len >> i;
    pos = 0;
    for (j=0; j<array_length_1d(data); j+=64) {
        for (i=0; i<16; i++) {
            w[i] = data[pos+3];
            w[i] = data[pos+2] | (w[i] << 8);
            w[i] = data[pos+1] | (w[i] << 8);
            w[i] = data[pos+0] | (w[i] << 8);
            pos += 4;
        }
        a = h[0];
        b = h[1];
        c = h[2];
        d = h[3];
        for (i=0; i<64; i++) {
            if      (i < 16) f = (d ^ (b & (c ^ d)));
            else if (i < 32) f = (c ^ (d & (b ^ c)));
            else if (i < 48) f = (b ^ c ^ d);
            else             f = (c ^ (b | (~d)));
            temp = d;
            d = c;
            c = b;
            e = uint & (a + f + _MD5k[i] + w[_MD5g[i]]);
            b = uint & ((uint & (e << _MD5r[i]) | (e >> _MD5s[i])) + b);
            a = temp;
        }
        h[0] = uint & (h[0] + a);
        h[1] = uint & (h[1] + b);
        h[2] = uint & (h[2] + c);
        h[3] = uint & (h[3] + d);
    }
    digest = "";
    for (j=0; j<4; j++) {
        for (i=0; i<32; i+=8) {
            digest += string_char_at("0123456789abcdef",1+($F & h[j] >> i+4));
            digest += string_char_at("0123456789abcdef",1+($F & h[j] >> i));
        }
    }
    return digest;
}