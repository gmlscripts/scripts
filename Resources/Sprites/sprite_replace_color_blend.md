sprite_replace_color_blend
==========================

Warning: This script is already slow but a [bug] in GameMaker:Studio
makes it pretty much unusable. The sprite below took 46 minutes to
process. It should have taken about 30 seconds.

[bug]: http://bugs.yoyogames.com/view.php?id=15778

![right](/images/sprite_replace_color_blend.gif "sprite_replace_color_blend()")

This script can replace one range of colors with another while preserving
overall shading. It is slow. VERY SLOW. It is only suitable for small
sprites with few frames. It is probably far too slow to be used in your
game. But it does have its uses.

This same functionality can be performed in real-time with a shader.
This shader has not yet been posted here but you can [see the shader]
at the GMC.

[see the shader]: https://web.archive.org/web/20191217103122/https://gmc.yoyogames.com/index.php?showtopic=589348

Note: A much faster script for color replacement (without color blending)
is [sprite_replace_color()](/script/sprite_replace_color).

script: sprite_replace_color_blend.gml

contributors: xot
