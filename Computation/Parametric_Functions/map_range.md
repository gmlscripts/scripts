map_range
=========

Remaps a value from one range to another range. 

```
// Map radians to degrees
degrees = map_range(n, -pi, pi, -180, 180);

// Map percentage to status message
//     0-24%   25-49%   50-74%   75-100%
status["Low", "Medium", "High", "DANGER!"];
index = floor(map_range(n, 0, 100, 0, 4));
message = status[clamp(index, 0, 3)];

// Map unit UV coordinate to texture page sprite
oldUV = [0.25, 0.33];
texUV = sprite_get_uvs(sprite, subimage);
newUV[0] = map_range(oldUV[0], 0.0, 1.0, texUV[0], texUV[2]);
newUV[1] = map_range(oldUV[1], 0.0, 1.0, texUV[1], texUV[3]);
```

script: map_range.gml

contributors: xot
