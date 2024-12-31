/// @func   cone_volume(radius, height)
///
/// @desc   Returns the volume of a cone of a given radius and height.
///
/// @param  {real}      radius      radius of cone
/// @param  {real}      height      height of cone
///
/// @return {real}      volume of cone
///
/// GMLscripts.com/license

function cone_volume(radius, height)
{
    return (1/3 * pi * radius * radius * height);
}