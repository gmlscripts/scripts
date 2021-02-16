#define draw_get_button
/// draw_get_button(x,y,str,width,height,color,hover,bgcolor)
//  GM:S v2.3+ compatible
//
//  Draws a simple labeled button on the screen and returns true
//  if it has been clicked using the left mouse button. This should
//  be called during a Draw Event is intended for testing purposes. 
//  Text alignment will be set to horizontal and vertical centering.
//
//      x,y         position to draw center of button, real
//  @param str         text to display inside button, string
//  @param width       width of button, real
//  @param height      height of button, real
//  @param color       color of text, real
//  @param hover       color of text when mouse is over button, real
//  @param bgcolor     color of background when mouse is over button, real
//
/// GMLscripts.com/license
function draw_get_button(x,y,str,width,height,color,hover,bgcolor) {
    var xyw,h,col1,col2,col3,prev_prev_alpha,bl,br,bt,bb,in;
    xx = x;
    yy = y;
    w = width / 2;
    h = height / 2;
    col1 = color;
    col2 = hover;
    col3 = bgcolor;
    prev_color = draw_get_color();
    prev_alpha = draw_get_alpha();
    bl = xx - w;
    br = xx + w;
    bt = yy - h;
    bb = yy + h;
    in = (mouse_x>bl && mouse_x<br && mouse_y>bt && mouse_y<bb);
    if (in) {
        draw_set_color(col3);
        draw_set_alpha(0.2);
        draw_rectangle(bl,bt,br,bb,false);
        draw_set_color(col2);
        draw_set_alpha(1);
    }else{
        draw_set_color(col1);
        draw_set_alpha(0.3);
    }
    draw_rectangle(bl,bt,br,bb,true);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(xx,yy,str);
    draw_set_color(prev_color);
    draw_set_alpha(prev_alpha);
    return (in && mouse_check_button_pressed(mb_left));
}