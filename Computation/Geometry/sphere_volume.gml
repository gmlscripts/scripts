#define sphere_volume
/// sphere_volume(radius)
//  GM:S v2.3+ compatible
//
//  Returns the volume of a sphere of a given radius.
//
//  @param radius      radius of sphere
//
///GMLscripts.com/license
function sphere_volume(radius) {
    return (4/3 * pi * radius * radius * radius);
}