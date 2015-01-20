#define intercept_course
/// intercept_course(origin,target,speed)
//
//  Returns the course direction required to hit a moving target
//  at a given projectile speed, or (-1) if no solution is found.
//
//      origin      instance with position (x,y), real
//      target      instance with position (x,y) and (speed), real
//      speed       speed of the projectile, real
//
/// GMLscripts.com/license
{
    var origin,target,pspeed,dir,alpha,phi,beta;
    origin = argument0;
    target = argument1;
    pspeed = argument2;
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
