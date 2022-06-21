map_range
=========

Remaps a value from one range to another range.

Given two ranges \([a_1,a_2]\) and \([b_1,b_2]\), a
value \(s\) in range \([a_1,a_2]\) is linearly mapped
to a value \(t\) in range \([b_1,b_2]\), where:
$$t = b_1+\frac{(s-a_1)(b_2-b_1)}{(a_2-a_1)}$$

```
// Map radians to degrees
degrees = map_range(n, -pi, pi, -180, 180);

// Map unit UV coordinates to texture page sprite
oldUV = [0.25, 0.33];
texUV = sprite_get_uvs(sprite, subimage);
newUV[0] = map_range(oldUV[0], 0.0, 1.0, texUV[0], texUV[2]);
newUV[1] = map_range(oldUV[1], 0.0, 1.0, texUV[1], texUV[3]);
```

script: map_range.gml

contributors: xot
