#define rgb_to_cmyk
/// rgb_to_cmyk(r,g,b [,channel])
//
//  Returns a list data structure populated by CMYK values of a color,
//  or optionally, the value of a specific color channel.
//
//      r,g,b       red, green, blue color components [0..255], real
//      channel     color channel, "C", "M", "Y", "K", string (optional)
//
/// GMLscripts.com/license
{
    var C,M,Y,K,cmyk;
    C = 1 - argument0 / 255;
    M = 1 - argument1 / 255;
    Y = 1 - argument2 / 255;
    K = min(C,M,Y,1);
    if (K == 1) {
        C = 0;
        M = 0;
        Y = 0;
    }else{
        C = (C - K) / (1 - K);
        M = (M - K) / (1 - K);
        Y = (Y - K) / (1 - K);
    }
    switch (argument3) {
        case "C": return C;
        case "M": return M;
        case "Y": return Y;
        case "K": return K;
    }
    cmyk = ds_list_create();
    ds_list_add(cmyk, C);
    ds_list_add(cmyk, M);
    ds_list_add(cmyk, Y);
    ds_list_add(cmyk, K);
    return cmyk;
}