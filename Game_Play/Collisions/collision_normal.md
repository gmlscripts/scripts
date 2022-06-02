collision_normal
================

![right](/images/collision_normal.png "collision_normal() sampler")

The purpose of this script is to determine what direction the sprite of
an instance is facing at a particular point on or near the sprite,
ie. a 2D analogue of a surface normal.

It does this by sampling an area around a given point. As each point is
sampled, if there is no collision, a vector is generated from the center
of the sample area to the sampled point. These vectors are summed to
produce an overall directional vector pointing away from any detected
surface within the sampled area.

Sampling can be quite intensive for even modest sized areas. Use the
`spacing` argument to reduce the number of samples.

demo: collision_normal 512 256
Move cursor near surfaces to see surface normal. Click to create bouncing ball.

script: collision_normal.gml

contributors: xot, strawbryjam
