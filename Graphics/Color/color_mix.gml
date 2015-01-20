#define color_mix
/// color_mix(color1,color2)
//
//  Returns a 50/50 mixture of the two given colors.
//
//      color1      RGB color, real
//      color2      RGB color, real
//
/// GMLscripts.com/license
{
    return (argument0 & $fefefe) + (argument1 & $fefefe) >> 1;
}