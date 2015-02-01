sprite_replace_color
====================

Warning: 
![right](/images/sprite_replace_color_bug.png "bug")
This script is [under review]. Some strange issues with color bleeding 
are being investigated. At the moment, the script may not work due to 
a possible GameMaker:Studio bug that has been difficult to reproduce. 
Differently colored neighboring pixels are mixing when the sprite is drawn 
to a surface. It's something like pixel interpolation, even though 
interpolation is disabled. When a color is replaced, the script may fail 
to recolor a fringe of pixels bordering the replaced areas.
[under review]: https://github.com/gmlscripts/scripts/issues/1

Note: Here is a much slower script that supports color blending:
[sprite_replace_color_blend()](/script/sprite_replace_color_blend)

script: sprite_replace_color.gml

contributors: xot
