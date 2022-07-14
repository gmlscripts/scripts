angle_difference
================

NOTE: The GameMaker function of the same name produces the same results
and obsoletes this script function. It has been removed from the site
index and appears here for historical purposes only.

This function determines the *smallest relative angle* between two directions,
a value between -180 and 180 degress. This information has many uses but it is
very often used for decision making and AI.

For example, by measuring the angle between the direction an instance is
facing and the direction to a target, one could determine if the target is
within the "cone of vision" of the instance.

    // Determine if a target is within a 90 degree cone of vision.
    directionToTarget = point_direction(x, y, target.x, target.y);
    angleToTarget = angle_difference(directionToTarget, direction);
    if (abs(angleToTarget) < 45) {
        // The target can be seen!
        fire_missile_at(target);
    }

Let's say the attacking instance has fired a heat-seeking missile at the
target. The difference in angle between the direction the missile is heading
and the direction to the target can determine how the missile needs to turn
to reach the target. Each step the missile can be made to gradually turn
towards the target by simply adding a fraction of the measured angle to the
direction the missile is heading.

    // Turn towards the target by two degrees (or less if necessary).
    directionToTarget = point_direction(x, y, target.x, target.y);
    angleToTarget = angle_difference(directionToTarget, direction);
    direction += sign(angleToTarget) * min(2, abs(angleToTarget));

script: angle_difference.gml

contributors: xot, EyeGuy