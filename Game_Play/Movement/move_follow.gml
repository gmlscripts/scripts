#define move_follow
/// move_follow(object,speed)
//  GM:S v2.3+ compatible
//
//  Makes the calling instance follow a given instance at a given speed.
//
//  @param object      object or instance (or all), real
//  @param speed       speed to follow at, real
//
/// GMLscripts.com/license
function move_follow(object,speed) {
    if (point_distance(x,y,object.x,object.y) > 0) {
        direction = point_direction(x,y,object.x,object.y);
        }
    return 0;
}