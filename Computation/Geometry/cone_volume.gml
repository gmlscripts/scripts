#define cone_volume
/// cone_volume(radius,height)
//  GM:S v2.3+ compatible
//
//  Returns the volume of a cone of a given radius and height.
//
//  @param radius      radius of cone, real
//  @param height      height of cone, real
//
/// GMLscripts.com/license
function cone_volume(radius,height) {
    return (1/3 * pi * radius * radius * height);
}