draw_sprite_wave_ext
====================

Draws a sprite with wave-like distortion. A wave can be horizontal or
vertical and its wavelength, anplitude, and phase can be adjusted for
various effects including animation. Scaling, color, and alpha blending
can also be specified.

NOTE: This is a relatively expensive function compared to drawing a sprite
normally. If it is needed for a large number of sprites, a shader-based
alternative may be preferred.

demo: draw_sprite_wave_ext 320 320
Use sliders and button to adjust effect.

script: draw_sprite_wave_ext.gml

contributors: xot