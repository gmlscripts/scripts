/// @func   instance_closest_approach(inst, time)
///
/// @desc   Returns the distance in pixels (or time in steps) until the
///         calling and given instances are at their nearest separation
///         based on their current positions and speeds. The returned
///         value is 0 if the instances are moving in parallel, negative
///         if the instances are diverging.
///
/// @param  {instance}  inst        instance id
/// @param  {bool}      time        true to return time rather than distance
///
/// @return {real}      distance (or time if time is true)
///
/// GMLscripts.com/license

function instance_closest_approach(inst, time=false)
{
    var x1 = x;
    var y1 = y;
    var x2 = inst.x;
    var y2 = inst.y;
    var dh = inst.hspeed - hspeed;
    var dv = inst.vspeed - vspeed;

    if ((dh == 0) && (dv == 0)) {
        if (time) return 0;
        return point_distance(x, y, inst.x, inst.y);
    }

    var t = -((x2 - x1) * dh + (y2 - y1) * dv) / (sqr(dh) + sqr(dv));
    if (time) return t;
    return sign(t) * point_distance(
        x + t * hspeed, y + t * vspeed,
        inst.x + t * inst.hspeed, inst.y + t * inst.vspeed);
}
