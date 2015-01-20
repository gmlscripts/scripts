#define 
/// color_to_wavelength(color)
//
//  Returns the approximate wavelength of a given color in nanometers.
//  Human color perception is a subjective phenomenon. It is not possible
//  to exactly map an RGB color on a monitor to a specific wavelength.
//  In particular, colors in the purple range will produce spurious results.
//
//      color       RGB color, real
//
/// GMLscripts.com/license
{
    var hue;
    hue = color_get_hue(argument0);
    return (650 - 2.25*hue + 0.0072*hue*hue);
}