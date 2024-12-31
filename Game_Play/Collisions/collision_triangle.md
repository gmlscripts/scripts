collision_triangle
==================

This script function works like the built-in `collision_*()` functions and
is used to detect collisions with a triangular region. It uses a collision
mask shaped like a right-angled triangle to detect collisions with pixel
accuracy (unlike other simpler methods). Because any triangle can be split
into two right-angled triangles, the function can manipulate this single
collision mask to fit any type of triangle using only scaling and rotation.

![collision_triangle](/images/collision_triangle.gif "collision triangle")

demo: collision_triangle 725 360
Click and drag triangle points. Press SPACE to toggle mask resolution.

The partner function `collision_triangle_init()` is required to initialize
the main function `collision_triangle()` and must be called once before the
main function can be used. The initialization function creates a collision
mask with the desired resolution and prepares the `__objCollisionTriangle`
helper object for use by the main function. See function header notes for
more information.

Note: This script function requires some manual assistance before use.
There needs to be a helper object named `__objCollisionTriangle` in your
project before the function can be initialized. Once added, the object
needs no further editing and does not need to be added to any rooms.

script: collision_triangle.gml

script: collision_triangle_init.gml

contributors: xot
