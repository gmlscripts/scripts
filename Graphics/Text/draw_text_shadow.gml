#define draw_text_shadow
/// draw_text_shadow(x,y,str,color,shadow,intensity,distance,direction)
//  GM:S v2.3+ compatible
//
//  Draws a given string with a simple shadow effect applied to it.
//
//      x,y         position of text, real
//  @param str         text, string
//  @param color       text color, real
//  @param shadow      shadow color, real
//  @param intensity   shadow intensity [0..1], real
//  @param distance    shadow distance in pixels, real
//  @param direction   shadow direction in degrees, real
//
/// GMLscripts.com/license
function draw_text_shadow(x,y,str,color,shadow,intensity,distance,direction) {
    var c,a,i,j;
    c = draw_get_color();
    a = draw_get_alpha();
    i = lengthdir_x(distance, direction);
    j = lengthdir_y(distance, direction);
    draw_set_color(shadow);
    draw_set_alpha(a * intensity);
    draw_text_ext(x + i, y + j, str, -1, -1);
    draw_set_color(color);
    draw_set_alpha(a);
    draw_text_ext(x, y, str, -1, -1);
    draw_set_color(c);
    return 0;
}