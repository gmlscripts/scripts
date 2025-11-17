/// @func   intercept_course(origin, target, speed)
///
/// @desc   Returns the course direction required to hit a moving target
///         at a given projectile speed, or (-1) if no solution is found.
///
/// @param  {object}    origin      origin instance with position (x,y)
/// @param  {object}    target      target instance with position (x,y)
/// @param  {real}      speed       speed of the projectile
///
/// @return {real}      direction to send projectile
///
/// GMLscripts.com/license

function intercept_course(origin, target, speed)
{
    var dir = point_direction(origin.x, origin.y, target.x, target.y);
    var alpha = target.speed / speed;
    var phi = degtorad(target.direction - dir);
    var beta = alpha * sin(phi);
    if (abs(beta) >= 1) {
        return (-1);
    }
    dir += radtodeg(arcsin(beta));
    return dir;
}
