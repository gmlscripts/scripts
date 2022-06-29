/// @func   collision_normal(x, y, obj, radius, spacing)
///
/// @desc   Returns a 2D "surface normal" (in degrees) at a given point
///         on or near an instance detected within a circular test area.
///         Makes approximately pi*(radius*radius)/(spacing*spacing)
///         collision calls. If no collision is found, (-1) is returned.
///
/// @param  {real}      x           x-coordinate of point near an instance
/// @param  {real}      y           y-coordinate of point near an instance
/// @param  {object}    obj         object or instance (or all)
/// @param  {real}      radius      radius of test area (default 4)
/// @param  {real}      spacing     space between each sample (default 1)
///
/// @return {real}      direction pointing away from the detected surface
///
/// GMLscripts.com/license

function collision_normal(x, y, obj, radius=4, spacing=1)
{
    var nx = 0;
    var ny = 0;
    if (collision_circle(x, y, radius, obj, true, true) != noone) {
        for (var j=spacing; j<=radius; j+=spacing) {
            for (var i=0; i<radius; i+=spacing) {
                if (point_distance(0, 0, i, j) <= radius) {
                    if (collision_point(x+i, y+j, obj, true, true) == noone) { nx += i; ny += j; }
                    if (collision_point(x+j, y-i, obj, true, true) == noone) { nx += j; ny -= i; }
                    if (collision_point(x-i, y-j, obj, true, true) == noone) { nx -= i; ny -= j; }
                    if (collision_point(x-j, y+i, obj, true, true) == noone) { nx -= j; ny += i; }
                }
            }
        }
        if (nx == 0 && ny == 0) return (-1);
        return point_direction(0, 0, nx, ny);
    }
    return (-1);
}
