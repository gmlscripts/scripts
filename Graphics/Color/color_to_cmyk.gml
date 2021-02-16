#define color_to_cmyk
/// color_to_cmyk(color [, channel])
//  GM:S v2.3+ compatible
//
//  Returns a list data structure populated by CMYK values of a color,
//  or optionally, the value of a specific color channel.
//
//  @param color       RGB color, real
//  @param channel     channel to return, "C", "M", "Y", "K", string (optional)
//
/// GMLscripts.com/license
function color_to_cmyk(color,channel) {
    var C,M,Y,K,cmyk;
    C = 1 - color_get_red(color) / 255;
    M = 1 - color_get_green(color) / 255;
    Y = 1 - color_get_blue(color) / 255;
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
    switch (channel) {
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