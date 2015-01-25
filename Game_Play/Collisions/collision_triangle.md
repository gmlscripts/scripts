collision_triangle
==================

Warning: Due to the obsolescence of `object_add()` and `object_add_event()`,
some or all of the work done by the script `collision_triangle_init()` 
will have to be done manually.

This script works similarly to built-in `collision_*()` functions. It uses 
a right-triangle-shaped sprite mask to detect collisions with pixel accuracy 
(unlike other simpler and faster methods). Because any triangle can be split 
into two right triangles, the script can manipulate this single collision mask 
to fit any triangle using only scaling and rotation.

![collision_triangle](/images/collision_triangle.gif "collision triangle")

Note: This script will eventually be replaced with a version that works more 
like the built-in `collision_*()` functions of GameMaker:Studio. It will return 
an instance id rather than the true or false value it returns now.

script: collision_triangle.gml

script: collision_triangle_init.gml

contributors: xot
