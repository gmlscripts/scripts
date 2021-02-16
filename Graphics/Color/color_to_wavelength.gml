#define 
/// color_to_wavelength(color)
//  GM:S v2.3+ compatible
//
//  Returns the approximate wavelength of a given color in nanometers.
//  Human color perception is a subjective phenomenon. It is not possible
//  to exactly map an RGB color on a monitor to a specific wavelength.
//  In particular, colors in the purple range will produce spurious results.
//
//  @param color       RGB color, real
//
/// GMLscripts.com/license
function color_to_wavelength(color) {
    var hue;
    hue = color_get_hue(color);
    return (650 - 2.25*hue + 0.0072*hue*hue);
}