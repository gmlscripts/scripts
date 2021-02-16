#define draw_rectangle_dashed_color
/// draw_rectangle_dashed_color(x1,y1,x2,y2,col1,col2,col3,col4,size)
//  GM:S v2.3+ compatible
//
//  Draws a rectangle made of dashes of a given size.
//  If no size is given, single pixel dots are used.
//  Creates a sprite, 2x2 pixels in size, and a pair
//  of global variables the first it is called.
//
//      y1       1st corner of the rectangle, real
//      y2       2nd corner of the rectangle, real
//  @param col1        top-left corner color, real
//  @param col2        top-right corner color, real
//  @param col3        bottom-right corner color, real
//  @param col4        bottom-left corner color, real
//  @param size        length of the dashes in pixels, real (optional)   
//
/// GMLscripts.com/license
function draw_rectangle_dashed_color(size) {
    // initialize the script on the first call
    if (!variable_global_exists("_DRAW_RECT_DASH_SPR")) {
        var i,j,k,l;
        i = draw_getpixel(0,0);
        j = draw_getpixel(1,0);
        k = draw_getpixel(0,1);
        l = draw_getpixel(1,1);
        draw_point_color(0,0,c_white);
        draw_point_color(1,0,c_black);
        draw_point_color(0,1,c_black);
        draw_point_color(1,1,c_white);
        global._DRAW_RECT_DASH_SPR = sprite_create_from_screen(0,0,2,2,0,1,0,0,0,0);
        global._DRAW_RECT_DASH_TEX = sprite_get_texture(global._DRAW_RECT_DASH_SPR,0);
        draw_point_color(0,0,i);
        draw_point_color(1,0,j);
        draw_point_color(0,1,k);
        draw_point_color(1,1,l);
    }
    
    // main script begin
    var x1,y1,x2,y2,u1,v1,u2,v2,alpha;;
    x1 = min(x1,x2);
    y1 = min(y1,y2);
    x2 = max(x1,x2);
    y2 = max(y1,y2);
    
    // scale and center texture UV coordinates
    size = max(1,size);
    u2 = (x2-x1)/(2*size);
    v2 = (y2-y1)/(2*size);
    u1 = 0.25 - (u2 mod 2)/2;
    v1 = 0.25 - (v2 mod 2)/2;
    u2 += u1;
    v2 += v1;
    
    // draw textured rectangle using the given colors and default alpha
    alpha = draw_get_alpha();
    texture_set_repeat(1);    
    draw_primitive_begin_texture(pr_linestrip, global._DRAW_RECT_DASH_TEX);
    draw_vertex_texture_color(x1, y1, u1, v1, col1, alpha);
    draw_vertex_texture_color(x2, y1, u2, v1, col2, alpha);
    draw_vertex_texture_color(x2, y2, u2, v2, col3, alpha);
    draw_vertex_texture_color(x1, y2, u1, v2, col4, alpha);
    draw_vertex_texture_color(x1, y1, u1, v1, col1, alpha);
    draw_primitive_end(); 
    return 0;
}