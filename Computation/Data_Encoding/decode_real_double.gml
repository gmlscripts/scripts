#define decode_real_double
/// decode_real_double(str)
//  GM:S v2.3+ compatible
//
//  Returns a real value decoded from the given string of
//  raw bytes in IEEE 754 double precision format.
//
//  @param str     8-byte in IEEE 754 double precision format, string
//
/// GMLscripts.com/license
function decode_real_double(str) {
    var S, E, M, byte, n;
    var i;
    for (i = 0; i < 8; i += 1) {
        byte[i] = ord(string_char_at(str,8 - i));
    }
    S = 1 - 2*((byte[7] & $80) > 0);
    i = 0;
    M = 0;
    while (i <= 51) {
        if (byte[i div 8] & (1<<(i mod 8)) > 0) {
            M += 1;
        }
        M /= 2;
        i += 1;
    }
    i = 62;
    E = 0;
    while (i > 51) {
        E *= 2;
        if (byte[i div 8] & (1<<(i mod 8)) > 0) {
            E += 1;
        }
        i -= 1;
    }
    if (E == 0) {
        n = S * M * power(2, -1022);
    }
    else {
        n = S * (M + 1) * power(2, E - 1023);
    }
    return n;
}