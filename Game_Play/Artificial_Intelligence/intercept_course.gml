#define intercept_course
/// intercept_course(origin,target,speed)
//  GM:S v2.3+ compatible
//
//  Returns the course direction required to hit a moving target
//  at a given projectile speed, or (-1) if no solution is found.
//
//  @param origin      instance with position (x,y), real
//  @param target      instance with position (x,y) and (speed), real
//  @param speed       speed of the projectile, real
//
/// GMLscripts.com/license
function intercept_course(origin,target,speed) {
    var pdir,alpha,phi,beta;
    pspeed = speed;
    dir = point_direction(origin.x,origin.y,target.x,target.y);
    alpha = target.speed / pspeed;
    phi = degtorad(target.direction - dir);
    beta = alpha * sin(phi);
    if (abs(beta) >= 1) {
        return (-1);
    }
    dir += radtodeg(arcsin(beta));
    return dir;
}