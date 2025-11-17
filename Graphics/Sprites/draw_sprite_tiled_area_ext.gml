/// @func   draw_sprite_tiled_area_ext(sprite, subimg, x, y, x1, y2, x2, y2, color, alpha)
///
/// @desc   Draws a sprite with blending tiled to fill a region at a given offset.
///
/// @param  {sprite}    sprite      sprite index
/// @param  {real}      subimg      image index
/// @param  {real}      x           origin offset x-coordinate
/// @param  {real}      y           origin offset x-coordinate
/// @param  {real}      x1          top-left x-coordinate of tiled area
/// @param  {real}      y1          top-left y-coordinate of tiled area
/// @param  {real}      x2          bottom-right x-coordinate of tiled area
/// @param  {real}      y2          bottom-right y-coordinate of tiled area
/// @param  {color}     color       color blending
/// @param  {real}      alpha       alpha blending
///
/// @return {real}      0 (unused)
///
/// GMLscripts.com/license

function draw_sprite_tiled_area_ext(sprite, subimg, x, y, x1, y1, x2, y2, color, alpha)
{
    var sw = sprite_get_width(sprite);
    var sh = sprite_get_height(sprite);

    var i = x1 - ((x1 mod sw) - (x mod sw)) - sw * ((x1 mod sw) < (x mod sw));
    var j = y1 - ((y1 mod sh) - (y mod sh)) - sh * ((y1 mod sh) < (y mod sh));
    var jj = j;

    var left,top,width,height,px,py;
    for (i=i; i<=x2; i+=sw) {
        for (j=j; j<=y2; j+=sh) {

            left = (i <= x1) ? x1 - i : 0;
            px = i + left;

            top = (j <= y1) ? y1 - j : 0;
            py = j + top;

            width = (x2 <= i + sw) ? (sw - (i + sw - x2) + 1) - left : sw - left;
            height = (y2 <= j + sh) ? (sh - (j + sh - y2) + 1) - top : sh - top;

            draw_sprite_part_ext(sprite, subimg, left, top, width, height, px, py, 1, 1, color, alpha);
        }
        j = jj;
    }
    return 0;
}
