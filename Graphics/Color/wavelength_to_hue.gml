#define wavelength_to_hue
/// wavelength_to_hue(nano)
//  GM:S v2.3+ compatible
//
//  Returns the approximate HSV color hue [0..255] of a given wavelength.
//  Human color perception is a subjective phenomenon. It is not possible
//  to exactly map an RGB color on a monitor to a specific wavelength.
//  In particular, colors in the purple range will produce spurious results.
//
//  @param nano        wavelength in nanometers, real
//
/// GMLscripts.com/license
function wavelength_to_hue(nano) {
    return (sqrt((nano - 650) / 0.0072) + 156.75);
}