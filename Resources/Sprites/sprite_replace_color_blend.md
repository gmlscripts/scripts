sprite_replace_color_blend
==========================

Warning: This script is already slow but a possible [bug] in GameMaker may
make it unusable. When last tested, the sprite below took 46 minutes to
process compared to an expected 30 seconds. The alteration suggested in the
linked bug report should resolve the problem but it is not yet implemented.

[bug]: https://web.archive.org/web/20210923093700/https://bugs.yoyogames.com/view.php?id=15778

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
