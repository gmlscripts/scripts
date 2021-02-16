#define instance_closest_approach
/// instance_closest_approach(inst[,time])
//  GM:S v2.3+ compatible
//
//  Returns the distance in pixels (or time in steps) until the calling
//  and given instances are at their nearest separation based on their 
//  current positions and speeds. The returned value is 0 if the instances
//  are moving in parallel, negative if the instances are diverging.
//
//  @param inst        instance id, real
//  @param time        true to return time rather than distance, bool
//
/// GMLscripts.com/license
function instance_closest_approach(inst) {
    var x1,y1,x2,y2,dh,dv,t;
    x1 = x;
    y1 = y;    
    x2 = inst.x;
    y2 = inst.y;
    dh = inst.hspeed - hspeed;
    dv = inst.vspeed - vspeed;
    if ((dh == 0) && (dv == 0)) {
        if (time) return 0;
        else return point_distance(x,y,inst.x,inst.y);
    }else{
        t = -((x2 - x1) * dh + (y2 - y1) * dv) / (sqr(dh) + sqr(dv));
        if (time) return t;
        else return sign(t) * point_distance(x + t * hspeed, y + t * vspeed,
        inst.x + t * inst.hspeed, inst.y + t * inst.vspeed);
    }
}