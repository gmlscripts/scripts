/// @func   draw_sprite_wave_ext(sprite, subimg, x, y, axis, wavelength, amplitude, phase, xscale, yscale, color, alpha)
///
/// @desc   Draws a sprite with wave-like distortion. The fractional part of the phase
///         argument controls the wave cycle. A full cycle covers the [0..1] interval.
///
/// @param  {srpite}    sprite      sprite index
/// @param  {real}      subimg      sprite subimage
/// @param  {real}      x           x position to draw sprite
/// @param  {real}      y           y position to draw sprite
/// @param  {real}      axis        0 = horizontal wave, 1 = vertical wave
/// @param  {real}      wavelength  length of the wave in pixels
/// @param  {real}      amplitude   height of wave in pixels
/// @param  {real}      phase       wave position offset
/// @param  {real}      xscale      horizontal scaling
/// @param  {real}      yscale      vertical scaling
/// @param  {color}     color       color blending
/// @param  {real}      alpha       alpha blending
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_sprite_wave_ext(sprite, subimg, x, y, axis, wavelength, amplitude, phase, xscale, yscale, color, alpha)
{
    var width  = sprite_get_width(sprite);
    var height = sprite_get_height(sprite);
    var xoff   = sprite_get_xoffset(sprite);
    var yoff   = sprite_get_yoffset(sprite);

    if (axis) {
        for (var i=0; i<height; i+=1) {
            var shift = amplitude * sin(2 * pi * ((i / wavelength) + phase));
            var sx = shift - xoff + x;
            var sy = i - yoff + y;
            draw_sprite_part_ext(sprite, subimg, 0, i, width, 1, sx, sy, xscale, yscale, color, alpha);
        }
    } else {
        for (var i=0; i<width; i+=1) {
            var shift = amplitude * sin(2 * pi * ((i / wavelength) + phase));
            var sx = i - xoff + x;
            var sy = shift-yoff + y;
            draw_sprite_part_ext(sprite, subimg, i, 0, 1, height, sx, sy, xscale, yscale, color, alpha);
        }
    }

	return 0;
}