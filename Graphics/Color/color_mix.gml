#define color_mix
/// color_mix(color1,color2)
//  GM:S v2.3+ compatible
//
//  Returns a 50/50 mixture of the two given colors.
//
//  @param color1      RGB color, real
//  @param color2      RGB color, real
//
/// GMLscripts.com/license
function color_mix(color1,color2) {
    return (color1 & $fefefe) + (color2 & $fefefe) >> 1;
}