/// @func   deceleration_distance(speed, friction)
///
/// @desc   Returns the distance travelled by an object moving at
///         a given speed and with a given rate of deceleration.
///
/// @param  {real}      speed       speed
/// @param  {real}      friction    deceleration rate
///
/// @return {real}      distance travelled, or -1 if friction is 0
///
/// GMLscripts.com/license

function deceleration_distance(speed, friction)
{
    if (friction == 0) return -1;
    return (speed * (speed - friction)) / (2 * friction);
}
