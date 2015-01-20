#define move_follow
/// move_follow(object,speed)
//
//  Makes the calling instance follow a given instance at a given speed.
//
//      object      object or instance (or all), real
//      speed       speed to follow at, real
//
/// GMLscripts.com/license
{
    if (point_distance(x,y,argument0.x,argument0.y) > 0) {
        direction = point_direction(x,y,argument0.x,argument0.y);
        speed = argument1;
    }
    return 0;
}