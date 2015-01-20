#define instance_closest_approach
/// instance_closest_approach(inst[,time])
//
//  Returns the distance in pixels (or time in steps) until the calling
//  and given instances are at their nearest separation based on their 
//  current positions and speeds. The returned value is 0 if the instances
//  are moving in parallel, negative if the instances are diverging.
//
//      inst        instance id, real
//      time        true to return time rather than distance, bool
//
/// GMLscripts.com/license
{
    var x1,y1,x2,y2,dh,dv,t;
    x1 = x;
    y1 = y;    
    x2 = argument0.x;
    y2 = argument0.y;
    dh = argument0.hspeed - hspeed;
    dv = argument0.vspeed - vspeed;
    if ((dh == 0) && (dv == 0)) {
        if (argument1) return 0;
        else return point_distance(x,y,argument0.x,argument0.y);
    }else{
        t = -((x2 - x1) * dh + (y2 - y1) * dv) / (sqr(dh) + sqr(dv));
        if (argument1) return t;
        else return sign(t) * point_distance(x + t * hspeed, y + t * vspeed,
        argument0.x + t * argument0.hspeed, argument0.y + t * argument0.vspeed);
    }
}